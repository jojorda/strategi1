import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:requests_inspector/requests_inspector.dart';
import 'package:strategi_hub_app/core/base/base_provider.dart';
import 'package:strategi_hub_app/core/constants/endpoints.dart';
import 'package:strategi_hub_app/data/models/response/jalan_korlantas_response.dart';
import 'package:strategi_hub_app/data/models/response/pantau_response.dart';

class HubnetRemoteSource extends ApiProvider {
  @override
  void onInit() {
    super.onInit();

    httpClient.baseUrl = dotenv.env['HUBNET_URL'];

    // Request modifiers
    httpClient.addRequestModifier<dynamic>((request) async {
      // Add basic auth header
      request.headers['Authorization'] =
          'Basic ${dotenv.env['HUBNET_HEADER_BASIC']}';

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
  }

  Future<PantauResponse> getDataPantau() async {
    try {
      final response = await post(Endpoints.getDataPantau, {});
      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      final dynamic data = response.body['data'];

      return PantauResponse.fromJson(data);
    } catch (e) {
      throw Exception('Failed to fetch simpul: ${e.toString()}');
    }
  }

  Future<JalanKorlantasResponse> getDataJalanKorlantas(
      int page, String selectedDate) async {
    try {
      final response = await post(Endpoints.getDataJalanKorlantas,
          {"tanggal": selectedDate, "page": page, "per_page": "10"});
      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      print('response KORLANTAS ===> $response');

      final dynamic data = response.body;

      return JalanKorlantasResponse.fromJson(data);
    } catch (e) {
      throw Exception('Failed to fetch jalan korlantas: ${e.toString()}');
    }
  }
}
