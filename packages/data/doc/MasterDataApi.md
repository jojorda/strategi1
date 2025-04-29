# strategi_mobile_api.api.MasterDataApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**masterKabupatenGet**](MasterDataApi.md#masterkabupatenget) | **GET** /master/kabupaten | Get the list of regencies
[**masterProvinsiGet**](MasterDataApi.md#masterprovinsiget) | **GET** /master/provinsi | Get the list of provinces
[**masterUserApprovalGet**](MasterDataApi.md#masteruserapprovalget) | **GET** /master/user-approval | Get the list of user approval


# **masterKabupatenGet**
> MasterKabupatenGet200Response masterKabupatenGet(idProvinsi)

Get the list of regencies

Retrieves a list of regencies data from the database.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getMasterDataApi();
final num idProvinsi = 8.14; // num | 

try {
    final response = api.masterKabupatenGet(idProvinsi);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MasterDataApi->masterKabupatenGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idProvinsi** | **num**|  | [optional] 

### Return type

[**MasterKabupatenGet200Response**](MasterKabupatenGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **masterProvinsiGet**
> MasterProvinsiGet200Response masterProvinsiGet()

Get the list of provinces

Retrieves a list of provinces data from the database.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getMasterDataApi();

try {
    final response = api.masterProvinsiGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling MasterDataApi->masterProvinsiGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MasterProvinsiGet200Response**](MasterProvinsiGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **masterUserApprovalGet**
> MasterUserApprovalGet200Response masterUserApprovalGet()

Get the list of user approval

Retrieves a list of user approval data from the database.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getMasterDataApi();

try {
    final response = api.masterUserApprovalGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling MasterDataApi->masterUserApprovalGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MasterUserApprovalGet200Response**](MasterUserApprovalGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

