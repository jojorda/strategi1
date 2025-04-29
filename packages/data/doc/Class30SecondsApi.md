# strategi_mobile_api.api.Class30SecondsApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**call30secondsGet**](Class30SecondsApi.md#call30secondsget) | **GET** /30-seconds | Get the list of 30 seconds video


# **call30secondsGet**
> Model30SecondsGet200Response call30secondsGet()

Get the list of 30 seconds video

Retrieves a list of 30 seconds video data with details like location, stream URL, and more. You can filter the results based on specific fields.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getClass30SecondsApi();

try {
    final response = api.call30secondsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling Class30SecondsApi->call30secondsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Model30SecondsGet200Response**](Model30SecondsGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

