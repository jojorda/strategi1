# strategi_mobile_api.api.AuthApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authLoginPost**](AuthApi.md#authloginpost) | **POST** /auth/login | Authenticate user and return access token
[**authMeGet**](AuthApi.md#authmeget) | **GET** /auth/me | Get the authenticated user&#39;s information
[**authRefreshTokenPost**](AuthApi.md#authrefreshtokenpost) | **POST** /auth/refresh-token | Refresh the access token
[**authTokenExchangePost**](AuthApi.md#authtokenexchangepost) | **POST** /auth/token-exchange | Exchange an sso access token for a new one


# **authLoginPost**
> AuthLoginPost200Response authLoginPost(authLoginPostRequest)

Authenticate user and return access token

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getAuthApi();
final AuthLoginPostRequest authLoginPostRequest = ; // AuthLoginPostRequest | 

try {
    final response = api.authLoginPost(authLoginPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authLoginPostRequest** | [**AuthLoginPostRequest**](AuthLoginPostRequest.md)|  | 

### Return type

[**AuthLoginPost200Response**](AuthLoginPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authMeGet**
> AuthMeGet200Response authMeGet()

Get the authenticated user's information

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getAuthApi();

try {
    final response = api.authMeGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authMeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthMeGet200Response**](AuthMeGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRefreshTokenPost**
> AuthRefreshTokenPost200Response authRefreshTokenPost(authRefreshTokenPostRequest)

Refresh the access token

Accepts a refresh token and returns a new access token.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getAuthApi();
final AuthRefreshTokenPostRequest authRefreshTokenPostRequest = ; // AuthRefreshTokenPostRequest | 

try {
    final response = api.authRefreshTokenPost(authRefreshTokenPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authRefreshTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authRefreshTokenPostRequest** | [**AuthRefreshTokenPostRequest**](AuthRefreshTokenPostRequest.md)|  | 

### Return type

[**AuthRefreshTokenPost200Response**](AuthRefreshTokenPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authTokenExchangePost**
> AuthLoginPost200Response authTokenExchangePost(authTokenExchangePostRequest)

Exchange an sso access token for a new one

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getAuthApi();
final AuthTokenExchangePostRequest authTokenExchangePostRequest = ; // AuthTokenExchangePostRequest | 

try {
    final response = api.authTokenExchangePost(authTokenExchangePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authTokenExchangePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authTokenExchangePostRequest** | [**AuthTokenExchangePostRequest**](AuthTokenExchangePostRequest.md)|  | 

### Return type

[**AuthLoginPost200Response**](AuthLoginPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

