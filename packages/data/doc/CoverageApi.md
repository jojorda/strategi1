# strategi_mobile_api.api.CoverageApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**coverageGet**](CoverageApi.md#coverageget) | **GET** /coverage | Get the list of video coverage


# **coverageGet**
> CoverageGet200Response coverageGet(tanggalAwal, tanggalAkhir, matra, kontributor, tipeLokasi, tipeMedia, statusLive)

Get the list of video coverage

Retrieves a list of video coverage data with details like location, stream URL, and more. You can filter the results based on specific fields.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getCoverageApi();
final Date tanggalAwal = 2013-10-20; // Date | Start date for filter by schedule date (optional)
final Date tanggalAkhir = 2013-10-20; // Date | End date for filter by schedule date (optional)
final String matra = matra_example; // String | Matra name for filter by matra (optional)
final String kontributor = kontributor_example; // String | Contributor name for filter by contributor (optional)
final String tipeLokasi = tipeLokasi_example; // String | Location type for filter (optional)
final String tipeMedia = tipeMedia_example; // String | Media type for filter (optional)
final String statusLive = statusLive_example; // String | Status live for filter (optional)

try {
    final response = api.coverageGet(tanggalAwal, tanggalAkhir, matra, kontributor, tipeLokasi, tipeMedia, statusLive);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CoverageApi->coverageGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tanggalAwal** | **Date**| Start date for filter by schedule date (optional) | [optional] 
 **tanggalAkhir** | **Date**| End date for filter by schedule date (optional) | [optional] 
 **matra** | **String**| Matra name for filter by matra (optional) | [optional] 
 **kontributor** | **String**| Contributor name for filter by contributor (optional) | [optional] 
 **tipeLokasi** | **String**| Location type for filter (optional) | [optional] 
 **tipeMedia** | **String**| Media type for filter (optional) | [optional] 
 **statusLive** | **String**| Status live for filter (optional) | [optional] 

### Return type

[**CoverageGet200Response**](CoverageGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

