import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for AuthApi
void main() {
  final instance = StrategiMobileApi().getAuthApi();

  group(AuthApi, () {
    // Authenticate user and return access token
    //
    //Future<AuthLoginPost200Response> authLoginPost(AuthLoginPostRequest authLoginPostRequest) async
    test('test authLoginPost', () async {
      // TODO
    });

    // Get the authenticated user's information
    //
    //Future<AuthMeGet200Response> authMeGet() async
    test('test authMeGet', () async {
      // TODO
    });

    // Refresh the access token
    //
    // Accepts a refresh token and returns a new access token.
    //
    //Future<AuthRefreshTokenPost200Response> authRefreshTokenPost(AuthRefreshTokenPostRequest authRefreshTokenPostRequest) async
    test('test authRefreshTokenPost', () async {
      // TODO
    });

    // Exchange an sso access token for a new one
    //
    //Future<AuthLoginPost200Response> authTokenExchangePost(AuthTokenExchangePostRequest authTokenExchangePostRequest) async
    test('test authTokenExchangePost', () async {
      // TODO
    });

  });
}
