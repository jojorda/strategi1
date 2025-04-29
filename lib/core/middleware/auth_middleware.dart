import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/modules/welcome/views/welcome_page.dart';

class AuthMiddleware extends GetMiddleware {
  final LocalStorageService _storage;

  AuthMiddleware(this._storage);

  @override
  RouteSettings? redirect(String? route) {
    final token = _storage.getString(LocalStorageKeys.accessToken);
    if (token == null || token.isEmpty) {
      return const RouteSettings(name: WelcomePage.routeName);
    }
    return null;
  }
}
