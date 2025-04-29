import 'dart:async';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/data/models/request/pending_request.dart';
import 'package:strategi_hub_app/domain/repositories/focus_repository.dart';
import 'package:strategi_hub_app/domain/repositories/posko_repository.dart';

class NetworkStatusNotifier with ChangeNotifier {
  bool _isConnected = true;
  final LocalStorageService _localStorageService;
  final PoskoRepository _poskoRepository;
  final FocusRepository _focusRepository;

  StreamSubscription<InternetStatus>? _subscription;
  Timer? _timer;
  bool _initStatus = false;
  bool _inProgressUpdate = false;

  bool get isConnected => _isConnected;

  NetworkStatusNotifier(
    this._localStorageService,
    this._poskoRepository,
    this._focusRepository,
  ) {
    initConnectivityListener();
  }

  Future<void> initConnectivityListener() async {
    // set delay for first time initialization
    _startTimer();

    // listen to internet connection status
    _subscription = InternetConnection().onStatusChange.listen(
      (InternetStatus status) {
        bool newStatus = status == InternetStatus.connected;
        if (_timer == null) {
          updateStatus(newStatus);
        } else {
          _initStatus = newStatus;
        }
      },
    );
  }

  void updateStatus(bool newStatus) {
    if (_isConnected != newStatus) {
      _isConnected = newStatus;
      if (newStatus) {
        postPendingRequest();
      }
      notifyListeners();
    }
  }

  void _startTimer() {
    _timer = Timer(Duration(seconds: 10), () {
      _timer = null;
      if (_isConnected != _initStatus) {
        updateStatus(_initStatus);
      }
    });
  }

  Future<void> postPendingRequest() async {
    if (_inProgressUpdate) return;
    _inProgressUpdate = true;

    try {
      List<PendingRequest>? existingPendings =
          _localStorageService.getList<PendingRequest>(
        'pending_post_request',
        PendingRequest.fromJson,
      );

      if (existingPendings != null && existingPendings.isNotEmpty) {
        // Create a copy to avoid modifying the list during iteration
        final pendingsCopy = List<PendingRequest>.from(existingPendings);

        // Process each pending request
        for (final pending in pendingsCopy) {
          // Remove this request from storage before processing
          existingPendings.remove(pending);
          await removePendingRequest(existingPendings);

          // Process the request
          switch (pending.type) {
            case 'posko':
              await _poskoRepository.postPosko(pending.request,
                  retryCount: pending.retryCount);
              break;
            case 'focus':
              await _focusRepository.createFocus(pending.request,
                  retryCount: pending.retryCount);
              break;
            default:
          }
        }
      }

      _inProgressUpdate = false;
    } catch (e) {
      _inProgressUpdate = false;
    }
  }

  Future<void> removePendingRequest(List<PendingRequest>? pendings) async {
    await _localStorageService.setList<PendingRequest>(
      'pending_post_request',
      pendings ?? <PendingRequest>[],
      (e) => e.toJson(),
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _timer?.cancel();
    super.dispose();
  }
}
