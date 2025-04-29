# strategi_mobile_api.api.ComparisonApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**comparisonGet**](ComparisonApi.md#comparisonget) | **GET** /comparison | Compare transportation data


# **comparisonGet**
> ComparisonGet200Response comparisonGet(idLocation, moda, tanggalAwal1, tanggalAkhir1, event)

Compare transportation data

Fetches transportation comparison data based on routine or seasonal inputs.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getComparisonApi();
final int idLocation = 56; // int | Location ID for filtering
final String moda = moda_example; // String | Mode of transportation
final Date tanggalAwal1 = 2013-10-20; // Date | Start date for routine data (optional)
final Date tanggalAkhir1 = 2013-10-20; // Date | End date for routine data (optional)
final String event = event_example; // String | Event name for seasonal data (optional)

try {
    final response = api.comparisonGet(idLocation, moda, tanggalAwal1, tanggalAkhir1, event);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ComparisonApi->comparisonGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idLocation** | **int**| Location ID for filtering | 
 **moda** | **String**| Mode of transportation | 
 **tanggalAwal1** | **Date**| Start date for routine data (optional) | [optional] 
 **tanggalAkhir1** | **Date**| End date for routine data (optional) | [optional] 
 **event** | **String**| Event name for seasonal data (optional) | [optional] 

### Return type

[**ComparisonGet200Response**](ComparisonGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

