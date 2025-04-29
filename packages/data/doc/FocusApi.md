# strategi_mobile_api.api.FocusApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**focusGet**](FocusApi.md#focusget) | **GET** /focus | Get a paginated list of focus records with optional filtering
[**focusPost**](FocusApi.md#focuspost) | **POST** /focus | Create a new focus record


# **focusGet**
> FocusResponse focusGet(tanggalAwal1, tanggalAkhir1, event)

Get a paginated list of focus records with optional filtering

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getFocusApi();
final String tanggalAwal1 = 2024-01-01; // String | The start date for the range (format: YYYY-MM-DD)
final String tanggalAkhir1 = 2024-01-07; // String | The end date for the range (format: YYYY-MM-DD)
final String event = Holiday; // String | The event to aggregate seasonal data for

try {
    final response = api.focusGet(tanggalAwal1, tanggalAkhir1, event);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FocusApi->focusGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tanggalAwal1** | **String**| The start date for the range (format: YYYY-MM-DD) | [optional] 
 **tanggalAkhir1** | **String**| The end date for the range (format: YYYY-MM-DD) | [optional] 
 **event** | **String**| The event to aggregate seasonal data for | [optional] 

### Return type

[**FocusResponse**](FocusResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **focusPost**
> focusPost(createFocusRequest)

Create a new focus record

Adds a new focus record to the system.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getFocusApi();
final CreateFocusRequest createFocusRequest = ; // CreateFocusRequest | 

try {
    api.focusPost(createFocusRequest);
} catch on DioException (e) {
    print('Exception when calling FocusApi->focusPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createFocusRequest** | [**CreateFocusRequest**](CreateFocusRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

