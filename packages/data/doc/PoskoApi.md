# strategi_mobile_api.api.PoskoApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**poskoGet**](PoskoApi.md#poskoget) | **GET** /posko | Get a paginated list of Posko records with optional filtering
[**poskoIdDelete**](PoskoApi.md#poskoiddelete) | **DELETE** /posko/{id} | Delete a specific Posko record
[**poskoIdGet**](PoskoApi.md#poskoidget) | **GET** /posko/{id} | Get a specific Posko record by ID
[**poskoIdPut**](PoskoApi.md#poskoidput) | **PUT** /posko/{id} | Update an existing Posko record
[**poskoParticipantGet**](PoskoApi.md#poskoparticipantget) | **GET** /posko/participant | Get list of Posko type
[**poskoPost**](PoskoApi.md#poskopost) | **POST** /posko | Create a new Posko record
[**poskoTypeGet**](PoskoApi.md#poskotypeget) | **GET** /posko/type | Get list of Posko type


# **poskoGet**
> PaginatedPoskoResponse poskoGet(page, limit, idJenisPosko, namaPosko, idEvent, masaPantauAwal, masaPantauAkhir, titikPantau)

Get a paginated list of Posko records with optional filtering

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getPoskoApi();
final int page = 56; // int | Page number for pagination
final int limit = 56; // int | Number of items per page
final int idJenisPosko = 56; // int | Filter by Posko type
final String namaPosko = namaPosko_example; // String | Filter by Posko name
final String idEvent = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter by Event ID (UUID)
final Date masaPantauAwal = 2013-10-20; // Date | Filter by monitoring period (ISO format)
final Date masaPantauAkhir = 2013-10-20; // Date | Filter by monitoring period (ISO format)
final String titikPantau = titikPantau_example; // String | Filter by monitoring point

try {
    final response = api.poskoGet(page, limit, idJenisPosko, namaPosko, idEvent, masaPantauAwal, masaPantauAkhir, titikPantau);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PoskoApi->poskoGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number for pagination | [optional] [default to 1]
 **limit** | **int**| Number of items per page | [optional] [default to 10]
 **idJenisPosko** | **int**| Filter by Posko type | [optional] 
 **namaPosko** | **String**| Filter by Posko name | [optional] 
 **idEvent** | **String**| Filter by Event ID (UUID) | [optional] 
 **masaPantauAwal** | **Date**| Filter by monitoring period (ISO format) | [optional] 
 **masaPantauAkhir** | **Date**| Filter by monitoring period (ISO format) | [optional] 
 **titikPantau** | **String**| Filter by monitoring point | [optional] 

### Return type

[**PaginatedPoskoResponse**](PaginatedPoskoResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **poskoIdDelete**
> poskoIdDelete(id)

Delete a specific Posko record

Deletes a specific Posko record identified by ID.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getPoskoApi();
final int id = 1; // int | ID of the Posko to delete

try {
    api.poskoIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling PoskoApi->poskoIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the Posko to delete | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **poskoIdGet**
> PoskoResponse poskoIdGet(id)

Get a specific Posko record by ID

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getPoskoApi();
final int id = 1; // int | ID of the Posko to retrieve

try {
    final response = api.poskoIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PoskoApi->poskoIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the Posko to retrieve | 

### Return type

[**PoskoResponse**](PoskoResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **poskoIdPut**
> poskoIdPut(id, poskoIdPutRequest)

Update an existing Posko record

Updates a specific Posko record identified by ID.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getPoskoApi();
final int id = 1; // int | ID of the Posko to update
final PoskoIdPutRequest poskoIdPutRequest = ; // PoskoIdPutRequest | 

try {
    api.poskoIdPut(id, poskoIdPutRequest);
} catch on DioException (e) {
    print('Exception when calling PoskoApi->poskoIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the Posko to update | 
 **poskoIdPutRequest** | [**PoskoIdPutRequest**](PoskoIdPutRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **poskoParticipantGet**
> PoskoParticipantGet200Response poskoParticipantGet()

Get list of Posko type

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getPoskoApi();

try {
    final response = api.poskoParticipantGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PoskoApi->poskoParticipantGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PoskoParticipantGet200Response**](PoskoParticipantGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **poskoPost**
> poskoPost(poskoPostRequest)

Create a new Posko record

Adds a new Posko record to the system.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getPoskoApi();
final PoskoPostRequest poskoPostRequest = ; // PoskoPostRequest | 

try {
    api.poskoPost(poskoPostRequest);
} catch on DioException (e) {
    print('Exception when calling PoskoApi->poskoPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poskoPostRequest** | [**PoskoPostRequest**](PoskoPostRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **poskoTypeGet**
> PoskoTypeGet200Response poskoTypeGet()

Get list of Posko type

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getPoskoApi();

try {
    final response = api.poskoTypeGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PoskoApi->poskoTypeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PoskoTypeGet200Response**](PoskoTypeGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

