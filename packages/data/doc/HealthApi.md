# strategi_mobile_api.api.HealthApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthGet**](HealthApi.md#healthget) | **GET** /health | check server is up


# **healthGet**
> HealthGet200Response healthGet()

check server is up

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getHealthApi();

try {
    final response = api.healthGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthGet200Response**](HealthGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

