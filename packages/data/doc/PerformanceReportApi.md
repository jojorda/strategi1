# strategi_mobile_api.api.PerformanceReportApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**performanceReportGet**](PerformanceReportApi.md#performancereportget) | **GET** /performance-report | Fetch Performance Report Data


# **performanceReportGet**
> PerformanceReportGet200Response performanceReportGet(tahun, moda)

Fetch Performance Report Data

Retrieves and parses Performance Report data from the specified URL.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getPerformanceReportApi();
final String tahun = tahun_example; // String | 
final String moda = moda_example; // String | 

try {
    final response = api.performanceReportGet(tahun, moda);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PerformanceReportApi->performanceReportGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tahun** | **String**|  | 
 **moda** | **String**|  | 

### Return type

[**PerformanceReportGet200Response**](PerformanceReportGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

