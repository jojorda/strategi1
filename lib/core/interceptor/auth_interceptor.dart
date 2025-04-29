import 'package:dio/dio.dart';
import 'package:strategi_hub_app/core/constants/endpoints.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';

class AuthInterceptor extends Interceptor {
  final String baseUrl;
  final LocalStorageService localStorageService;

  AuthInterceptor({required this.baseUrl, required this.localStorageService});

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = localStorageService.getString(LocalStorageKeys.accessToken);
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final refreshToken =
          localStorageService.getString(LocalStorageKeys.refreshToken);
      if (refreshToken != null && refreshToken.isNotEmpty) {
        try {
          final response = await Dio(
            BaseOptions(
              baseUrl: baseUrl,
              connectTimeout: const Duration(seconds: 30),
              receiveTimeout: const Duration(seconds: 30),
            ),
          ).post(
            Endpoints.refreshToken,
            data: {'refreshToken': refreshToken},
          );

          if (response.statusCode == 200) {
            final newToken = response.data['data']['accessToken'];
            localStorageService.setString(
                LocalStorageKeys.accessToken, newToken);
            final expiresIn = response.data['data']['expiresIn'];
            localStorageService.setInt(
                LocalStorageKeys.tokenExpiredIn, expiresIn);
            final requestOptions = err.requestOptions;
            requestOptions.headers['Authorization'] = 'Bearer $newToken';

            final newResponse = await Dio().fetch(requestOptions);
            final res = handler.resolve(newResponse);
            return res;
          }
        } catch (e) {
          rethrow;
        }
      }
    }

    super.onError(err, handler);
  }
}
