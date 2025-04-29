import 'dart:convert';

import 'package:strategi_hub_app/domain/entities/posko.dart';
import 'package:strategi_hub_app/domain/entities/performance_report.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class PendingRequest {
  String type;
  int retryCount;
  dynamic request;

  PendingRequest({
    required this.type,
    required this.request,
    this.retryCount = 1,
  });

  factory PendingRequest.fromJson(Map<String, dynamic> req) {
    dynamic mapRequest() {
      if (req['request'] == null) {
        return null;
      }
      switch (req['type']) {
        case "focus":
          return serializers.deserializeWith(
            CreateFocusRequest.serializer,
            json.decode(
              req['request'],
            ),
          );
        case "posko":
          return PoskoRequest.fromJson(json.decode(req['request']));
        case "report":
          return ReportRequest.fromJson(json.decode(req['request']));
        default:
          return null;
      }
    }

    final data = PendingRequest(
      type: req['type'],
      request: mapRequest(),
      retryCount: req['retryCount'],
    );

    return data;
  }

  Map<String, dynamic> toJson() {
    String? mapRequest() {
      if (request == null) {
        return null;
      }
      switch (type) {
        case 'focus':
          return json.encode(
            serializers.serializeWith(CreateFocusRequest.serializer, request),
          );
        case 'posko':
          return json.encode((request as PoskoRequest).toJson());
        case 'report':
          return json.encode((request as ReportRequest).toJson());
        default:
          return null;
      }
    }

    final data = {
      'type': type,
      'retryCount': retryCount,
      'request': mapRequest(),
    };
    return data;
  }
}
