# strategi_mobile_api.api.CCTVApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cctvGet**](CCTVApi.md#cctvget) | **GET** /cctv | Get the list of CCTV streams


# **cctvGet**
> CctvGet200Response cctvGet(matra, namaProvinsi, namaKabupatenKota, search)

Get the list of CCTV streams

Retrieves a list of CCTV stream data with details like location, stream URL, and more. You can filter the results based on specific fields.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getCCTVApi();
final String matra = matra_example; // String | Filter CCTV streams by matra (e.g., \"darat\")
final String namaProvinsi = namaProvinsi_example; // String | Filter CCTV streams by namaProvinsi (e.g., \"Jakarta\")
final String namaKabupatenKota = namaKabupatenKota_example; // String | Filter CCTV streams by namaKabupatenKota (e.g., \"Cimanggis\")
final String search = search_example; // String | Search CCTV streams by any relevant field (e.g., location name, CCTV name)

try {
    final response = api.cctvGet(matra, namaProvinsi, namaKabupatenKota, search);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CCTVApi->cctvGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matra** | **String**| Filter CCTV streams by matra (e.g., \"darat\") | [optional] 
 **namaProvinsi** | **String**| Filter CCTV streams by namaProvinsi (e.g., \"Jakarta\") | [optional] 
 **namaKabupatenKota** | **String**| Filter CCTV streams by namaKabupatenKota (e.g., \"Cimanggis\") | [optional] 
 **search** | **String**| Search CCTV streams by any relevant field (e.g., location name, CCTV name) | [optional] 

### Return type

[**CctvGet200Response**](CctvGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

