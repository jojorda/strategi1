import 'package:strategi_hub_app/core/base/base_provider.dart';
import 'package:strategi_hub_app/core/constants/endpoints.dart';
import 'package:strategi_hub_app/data/models/request/login_request.dart';
import 'package:strategi_hub_app/data/models/response/login_response.dart';
import 'package:strategi_hub_app/data/models/response/user_response.dart';

class AuthRemoteSource extends ApiProvider {
  Future<LoginResponse> login(LoginRequest request) async {
    final response = await post(Endpoints.login, request.toJson());

    if (response.status.hasError) {
      throw Exception(response.statusText!);
    }

    return LoginResponse.fromJson(response.body['data']);
  }

  Future<LoginResponse> tokenExchange(String accessToken) async {
    final response =
        await post(Endpoints.tokenExchange, {"accessToken": accessToken});

    if (response.status.hasError) {
      throw Exception(response.statusText!);
    }

    return LoginResponse.fromJson(response.body['data']);
  }

  Future<UserResponse> getProfile() async {
    try {
      final response = await get(Endpoints.getProfile);

      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      return UserResponse.fromJson(response.body['data']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
