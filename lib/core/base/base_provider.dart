import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:requests_inspector/requests_inspector.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';

class ApiProvider extends GetConnect {
  @override
  void onInit() {
    // Base URL configuration
    httpClient.baseUrl = dotenv.env['API_URL'];

    // Default timeout
    httpClient.timeout = const Duration(minutes: 1);

    // Request modifiers
    httpClient.addRequestModifier<dynamic>((request) async {
      // Get token from storage
      final token = Get.find<LocalStorageService>()
          .getString(LocalStorageKeys.accessToken);
      if (token != null && token.isNotEmpty) {
        request.headers['Authorization'] = 'Bearer $token';
      }

      return request;
    });

    httpClient.addResponseModifier((request, response) async {
      InspectorController().addNewRequest(
        RequestDetails(
          requestName: request.url.path,
          requestMethod: RequestMethod.values
                  .where(
                    (element) =>
                        element.name.toLowerCase() ==
                        request.method.toLowerCase(),
                  )
                  .firstOrNull ??
              RequestMethod.GET,
          url: '${request.url.scheme}://${request.url.host}${request.url.path}',
          queryParameters: request.url.queryParameters,
          statusCode: response.statusCode,
          headers: request.headers,
          requestBody: await processRequestBody(request.bodyBytes),
          responseBody: response.body,
        ),
      );
      return response;
    });

    super.onInit();
  }

  Future<dynamic> processRequestBody(Stream<List<int>>? bodyBytes) async {
    if (bodyBytes == null) {
      return null;
    }
    try {
      // Collect all bytes and decode to a string
      final jsonString = await utf8.decoder.bind(bodyBytes).join();

      return jsonDecode(jsonString);
    } catch (e) {
      return null;
    }
  }
}
