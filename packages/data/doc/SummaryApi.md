# strategi_mobile_api.api.SummaryApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**summaryRoutineGet**](SummaryApi.md#summaryroutineget) | **GET** /summary/routine | Get seasonal production data
[**summarySeasonalGet**](SummaryApi.md#summaryseasonalget) | **GET** /summary/seasonal | Retrieve seasonal routine monitoring data


# **summaryRoutineGet**
> SummaryRoutineGet200Response summaryRoutineGet(tanggalAwal1, tanggalAkhir1, provinsi, moda)

Get seasonal production data

Fetches data related to seasonal production and returns the summarized data.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getSummaryApi();
final String tanggalAwal1 = tanggalAwal1_example; // String | Start date of the first period
final String tanggalAkhir1 = tanggalAkhir1_example; // String | End date of the first period
final String provinsi = provinsi_example; // String | Province filter (optional)
final String moda = moda_example; // String | Mode of transport filter (optional)

try {
    final response = api.summaryRoutineGet(tanggalAwal1, tanggalAkhir1, provinsi, moda);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SummaryApi->summaryRoutineGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tanggalAwal1** | **String**| Start date of the first period | 
 **tanggalAkhir1** | **String**| End date of the first period | 
 **provinsi** | **String**| Province filter (optional) | [optional] 
 **moda** | **String**| Mode of transport filter (optional) | [optional] 

### Return type

[**SummaryRoutineGet200Response**](SummaryRoutineGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **summarySeasonalGet**
> SummarySeasonalGet200Response summarySeasonalGet(event, provinsi, moda)

Retrieve seasonal routine monitoring data

Fetches seasonal routine data based on given date ranges and optional filters.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getSummaryApi();
final String event = event_example; // String | The event for which routine data is being fetched.
final String provinsi = provinsi_example; // String | The province to filter the data (optional).
final String moda = moda_example; // String | The mode of transportation to filter the data (optional).

try {
    final response = api.summarySeasonalGet(event, provinsi, moda);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SummaryApi->summarySeasonalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event** | **String**| The event for which routine data is being fetched. | 
 **provinsi** | **String**| The province to filter the data (optional). | [optional] 
 **moda** | **String**| The mode of transportation to filter the data (optional). | [optional] 

### Return type

[**SummarySeasonalGet200Response**](SummarySeasonalGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

