# strategi_mobile_api.api.ReportApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reportApprovalGet**](ReportApi.md#reportapprovalget) | **GET** /report/approval | Get all reports need to approve
[**reportGet**](ReportApi.md#reportget) | **GET** /report | Get all reports
[**reportIdApprovePost**](ReportApi.md#reportidapprovepost) | **POST** /report/{id}/approve | Approve an report
[**reportIdDelete**](ReportApi.md#reportiddelete) | **DELETE** /report/{id} | Delete a report
[**reportIdGet**](ReportApi.md#reportidget) | **GET** /report/{id} | Get report by ID
[**reportIdLaporanPantauCuacaGet**](ReportApi.md#reportidlaporanpantaucuacaget) | **GET** /report/{idLaporanPantau}/cuaca | Get weather information for a report
[**reportIdLaporanPantauCuacaPost**](ReportApi.md#reportidlaporanpantaucuacapost) | **POST** /report/{idLaporanPantau}/cuaca | Create weather information
[**reportIdLaporanPantauKecelakaanGet**](ReportApi.md#reportidlaporanpantaukecelakaanget) | **GET** /report/{idLaporanPantau}/kecelakaan | Get all accident reports for a report
[**reportIdLaporanPantauKecelakaanPost**](ReportApi.md#reportidlaporanpantaukecelakaanpost) | **POST** /report/{idLaporanPantau}/kecelakaan | Create or update a new accident report
[**reportIdPut**](ReportApi.md#reportidput) | **PUT** /report/{id} | Update a report
[**reportIdRejectPost**](ReportApi.md#reportidrejectpost) | **POST** /report/{id}/reject | Reject an report
[**reportPost**](ReportApi.md#reportpost) | **POST** /report | Create a new report


# **reportApprovalGet**
> ReportGet200Response reportApprovalGet(type, search, poskoTerpadu, event, dateFrom, dateTo, isApproved, page, limit)

Get all reports need to approve

Retrieves a list of all reports with optional filtering

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final String type = type_example; // String | Filter by type
final String search = search_example; // String | Filter by typed keyword
final String poskoTerpadu = poskoTerpadu_example; // String | Filter by integrated post
final String event = event_example; // String | Filter by event
final Date dateFrom = 2013-10-20; // Date | Filter by date range (start)
final Date dateTo = 2013-10-20; // Date | Filter by date range (end)
final String isApproved = isApproved_example; // String | Filter status approved (true/false)
final int page = 56; // int | Page number for pagination
final int limit = 56; // int | Number of items per page

try {
    final response = api.reportApprovalGet(type, search, poskoTerpadu, event, dateFrom, dateTo, isApproved, page, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportApprovalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Filter by type | [optional] 
 **search** | **String**| Filter by typed keyword | [optional] 
 **poskoTerpadu** | **String**| Filter by integrated post | [optional] 
 **event** | **String**| Filter by event | [optional] 
 **dateFrom** | **Date**| Filter by date range (start) | [optional] 
 **dateTo** | **Date**| Filter by date range (end) | [optional] 
 **isApproved** | **String**| Filter status approved (true/false) | [optional] 
 **page** | **int**| Page number for pagination | [optional] [default to 1]
 **limit** | **int**| Number of items per page | [optional] [default to 10]

### Return type

[**ReportGet200Response**](ReportGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportGet**
> ReportGet200Response reportGet(type, search, poskoTerpadu, event, dateFrom, dateTo, isApproved, page, limit)

Get all reports

Retrieves a list of all reports with optional filtering

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final String type = type_example; // String | Filter by type
final String search = search_example; // String | Filter by typed keyword
final String poskoTerpadu = poskoTerpadu_example; // String | Filter by integrated post
final String event = event_example; // String | Filter by event
final Date dateFrom = 2013-10-20; // Date | Filter by date range (start)
final Date dateTo = 2013-10-20; // Date | Filter by date range (end)
final String isApproved = isApproved_example; // String | Filter status approved (true/false)
final int page = 56; // int | Page number for pagination
final int limit = 56; // int | Number of items per page

try {
    final response = api.reportGet(type, search, poskoTerpadu, event, dateFrom, dateTo, isApproved, page, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Filter by type | [optional] 
 **search** | **String**| Filter by typed keyword | [optional] 
 **poskoTerpadu** | **String**| Filter by integrated post | [optional] 
 **event** | **String**| Filter by event | [optional] 
 **dateFrom** | **Date**| Filter by date range (start) | [optional] 
 **dateTo** | **Date**| Filter by date range (end) | [optional] 
 **isApproved** | **String**| Filter status approved (true/false) | [optional] 
 **page** | **int**| Page number for pagination | [optional] [default to 1]
 **limit** | **int**| Number of items per page | [optional] [default to 10]

### Return type

[**ReportGet200Response**](ReportGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportIdApprovePost**
> ReportIdApprovePost200Response reportIdApprovePost(id, reportIdApprovePostRequest)

Approve an report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the report to approve
final ReportIdApprovePostRequest reportIdApprovePostRequest = ; // ReportIdApprovePostRequest | 

try {
    final response = api.reportIdApprovePost(id, reportIdApprovePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportIdApprovePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the report to approve | 
 **reportIdApprovePostRequest** | [**ReportIdApprovePostRequest**](ReportIdApprovePostRequest.md)|  | 

### Return type

[**ReportIdApprovePost200Response**](ReportIdApprovePost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportIdDelete**
> reportIdDelete(id)

Delete a report

Deletes a specific report by its ID

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final int id = 56; // int | ID of the report to delete

try {
    api.reportIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the report to delete | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportIdGet**
> ReportPost201Response reportIdGet(id)

Get report by ID

Retrieves a specific report by its ID

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final int id = 56; // int | ID of the report to retrieve

try {
    final response = api.reportIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the report to retrieve | 

### Return type

[**ReportPost201Response**](ReportPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportIdLaporanPantauCuacaGet**
> ReportIdLaporanPantauCuacaGet200Response reportIdLaporanPantauCuacaGet(idLaporanPantau)

Get weather information for a report

Retrieves weather information associated with a specific report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final int idLaporanPantau = 56; // int | ID of the report to get weather information for

try {
    final response = api.reportIdLaporanPantauCuacaGet(idLaporanPantau);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportIdLaporanPantauCuacaGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idLaporanPantau** | **int**| ID of the report to get weather information for | 

### Return type

[**ReportIdLaporanPantauCuacaGet200Response**](ReportIdLaporanPantauCuacaGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportIdLaporanPantauCuacaPost**
> ReportIdLaporanPantauCuacaPost201Response reportIdLaporanPantauCuacaPost(idLaporanPantau, cuaca)

Create weather information

Creates weather information associated with an existing report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final int idLaporanPantau = 56; // int | ID of the report to associate with this weather information
final Cuaca cuaca = ; // Cuaca | 

try {
    final response = api.reportIdLaporanPantauCuacaPost(idLaporanPantau, cuaca);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportIdLaporanPantauCuacaPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idLaporanPantau** | **int**| ID of the report to associate with this weather information | 
 **cuaca** | [**Cuaca**](Cuaca.md)|  | 

### Return type

[**ReportIdLaporanPantauCuacaPost201Response**](ReportIdLaporanPantauCuacaPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportIdLaporanPantauKecelakaanGet**
> ReportIdLaporanPantauKecelakaanGet200Response reportIdLaporanPantauKecelakaanGet(idLaporanPantau)

Get all accident reports for a report

Retrieves all accident reports associated with a specific report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final int idLaporanPantau = 56; // int | ID of the report to get accident reports for

try {
    final response = api.reportIdLaporanPantauKecelakaanGet(idLaporanPantau);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportIdLaporanPantauKecelakaanGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idLaporanPantau** | **int**| ID of the report to get accident reports for | 

### Return type

[**ReportIdLaporanPantauKecelakaanGet200Response**](ReportIdLaporanPantauKecelakaanGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportIdLaporanPantauKecelakaanPost**
> ReportIdLaporanPantauKecelakaanPost201Response reportIdLaporanPantauKecelakaanPost(idLaporanPantau, kecelakaan)

Create or update a new accident report

Creates or updates a new accident report associated with an existing report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final int idLaporanPantau = 56; // int | ID of the report to associate with this accident report
final Kecelakaan kecelakaan = ; // Kecelakaan | 

try {
    final response = api.reportIdLaporanPantauKecelakaanPost(idLaporanPantau, kecelakaan);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportIdLaporanPantauKecelakaanPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idLaporanPantau** | **int**| ID of the report to associate with this accident report | 
 **kecelakaan** | [**Kecelakaan**](Kecelakaan.md)|  | 

### Return type

[**ReportIdLaporanPantauKecelakaanPost201Response**](ReportIdLaporanPantauKecelakaanPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportIdPut**
> ReportPost201Response reportIdPut(id, type, matra, event, nama, personil, pengikut, tanggal, provinsi, kabupaten, angkutan, unitPelayanan, deskripsi, isKejadianMenonjol, kejadianMenonjol, koordinatKejadianMenonjol, isKecelakaan, kecelakaan, koordinatKecelakaan, lokasiKecelakaan, pembuat, persetujuan, file, photo, captionPhoto)

Update a report

Updates an existing report with new information

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final int id = 56; // int | ID of the report to update
final String type = type_example; // String | 
final String matra = matra_example; // String | 
final String event = event_example; // String | 
final String nama = nama_example; // String | 
final String personil = personil_example; // String | 
final String pengikut = pengikut_example; // String | Comma separated (,)
final Date tanggal = 2013-10-20; // Date | 
final String provinsi = provinsi_example; // String | 
final String kabupaten = kabupaten_example; // String | 
final String angkutan = angkutan_example; // String | 
final String unitPelayanan = unitPelayanan_example; // String | 
final String deskripsi = deskripsi_example; // String | 
final bool isKejadianMenonjol = true; // bool | 
final String kejadianMenonjol = kejadianMenonjol_example; // String | 
final String koordinatKejadianMenonjol = koordinatKejadianMenonjol_example; // String | 
final bool isKecelakaan = true; // bool | 
final String kecelakaan = kecelakaan_example; // String | 
final String koordinatKecelakaan = koordinatKecelakaan_example; // String | 
final String lokasiKecelakaan = lokasiKecelakaan_example; // String | 
final String pembuat = pembuat_example; // String | 
final String persetujuan = persetujuan_example; // String | 
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 
final MultipartFile photo = BINARY_DATA_HERE; // MultipartFile | 
final String captionPhoto = captionPhoto_example; // String | 

try {
    final response = api.reportIdPut(id, type, matra, event, nama, personil, pengikut, tanggal, provinsi, kabupaten, angkutan, unitPelayanan, deskripsi, isKejadianMenonjol, kejadianMenonjol, koordinatKejadianMenonjol, isKecelakaan, kecelakaan, koordinatKecelakaan, lokasiKecelakaan, pembuat, persetujuan, file, photo, captionPhoto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the report to update | 
 **type** | **String**|  | [optional] 
 **matra** | **String**|  | [optional] 
 **event** | **String**|  | [optional] 
 **nama** | **String**|  | [optional] 
 **personil** | **String**|  | [optional] 
 **pengikut** | **String**| Comma separated (,) | [optional] 
 **tanggal** | **Date**|  | [optional] 
 **provinsi** | **String**|  | [optional] 
 **kabupaten** | **String**|  | [optional] 
 **angkutan** | **String**|  | [optional] 
 **unitPelayanan** | **String**|  | [optional] 
 **deskripsi** | **String**|  | [optional] 
 **isKejadianMenonjol** | **bool**|  | [optional] [default to false]
 **kejadianMenonjol** | **String**|  | [optional] 
 **koordinatKejadianMenonjol** | **String**|  | [optional] 
 **isKecelakaan** | **bool**|  | [optional] [default to false]
 **kecelakaan** | **String**|  | [optional] 
 **koordinatKecelakaan** | **String**|  | [optional] 
 **lokasiKecelakaan** | **String**|  | [optional] 
 **pembuat** | **String**|  | [optional] 
 **persetujuan** | **String**|  | [optional] 
 **file** | **MultipartFile**|  | [optional] 
 **photo** | **MultipartFile**|  | [optional] 
 **captionPhoto** | **String**|  | [optional] 

### Return type

[**ReportPost201Response**](ReportPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportIdRejectPost**
> ReportIdRejectPost200Response reportIdRejectPost(id, reportIdRejectPostRequest)

Reject an report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the report to reject
final ReportIdRejectPostRequest reportIdRejectPostRequest = ; // ReportIdRejectPostRequest | 

try {
    final response = api.reportIdRejectPost(id, reportIdRejectPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportIdRejectPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the report to reject | 
 **reportIdRejectPostRequest** | [**ReportIdRejectPostRequest**](ReportIdRejectPostRequest.md)|  | 

### Return type

[**ReportIdRejectPost200Response**](ReportIdRejectPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportPost**
> ReportPost201Response reportPost(type, matra, event, nama, personil, pengikut, tanggal, provinsi, kabupaten, angkutan, unitPelayanan, deskripsi, isKejadianMenonjol, kejadianMenonjol, koordinatKejadianMenonjol, isKecelakaan, kecelakaan, koordinatKecelakaan, lokasiKecelakaan, pembuat, persetujuan, file, photo, captionPhoto)

Create a new report

Creates a new report with the provided information

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getReportApi();
final String type = type_example; // String | 
final String matra = matra_example; // String | 
final String event = event_example; // String | 
final String nama = nama_example; // String | 
final String personil = personil_example; // String | 
final String pengikut = pengikut_example; // String | Comma separated (,)
final Date tanggal = 2013-10-20; // Date | 
final String provinsi = provinsi_example; // String | 
final String kabupaten = kabupaten_example; // String | 
final String angkutan = angkutan_example; // String | 
final String unitPelayanan = unitPelayanan_example; // String | 
final String deskripsi = deskripsi_example; // String | 
final bool isKejadianMenonjol = true; // bool | 
final String kejadianMenonjol = kejadianMenonjol_example; // String | 
final String koordinatKejadianMenonjol = koordinatKejadianMenonjol_example; // String | 
final bool isKecelakaan = true; // bool | 
final String kecelakaan = kecelakaan_example; // String | 
final String koordinatKecelakaan = koordinatKecelakaan_example; // String | 
final String lokasiKecelakaan = lokasiKecelakaan_example; // String | 
final String pembuat = pembuat_example; // String | 
final String persetujuan = persetujuan_example; // String | 
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 
final MultipartFile photo = BINARY_DATA_HERE; // MultipartFile | 
final String captionPhoto = captionPhoto_example; // String | 

try {
    final response = api.reportPost(type, matra, event, nama, personil, pengikut, tanggal, provinsi, kabupaten, angkutan, unitPelayanan, deskripsi, isKejadianMenonjol, kejadianMenonjol, koordinatKejadianMenonjol, isKecelakaan, kecelakaan, koordinatKecelakaan, lokasiKecelakaan, pembuat, persetujuan, file, photo, captionPhoto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->reportPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**|  | [optional] 
 **matra** | **String**|  | [optional] 
 **event** | **String**|  | [optional] 
 **nama** | **String**|  | [optional] 
 **personil** | **String**|  | [optional] 
 **pengikut** | **String**| Comma separated (,) | [optional] 
 **tanggal** | **Date**|  | [optional] 
 **provinsi** | **String**|  | [optional] 
 **kabupaten** | **String**|  | [optional] 
 **angkutan** | **String**|  | [optional] 
 **unitPelayanan** | **String**|  | [optional] 
 **deskripsi** | **String**|  | [optional] 
 **isKejadianMenonjol** | **bool**|  | [optional] [default to false]
 **kejadianMenonjol** | **String**|  | [optional] 
 **koordinatKejadianMenonjol** | **String**|  | [optional] 
 **isKecelakaan** | **bool**|  | [optional] [default to false]
 **kecelakaan** | **String**|  | [optional] 
 **koordinatKecelakaan** | **String**|  | [optional] 
 **lokasiKecelakaan** | **String**|  | [optional] 
 **pembuat** | **String**|  | [optional] 
 **persetujuan** | **String**|  | [optional] 
 **file** | **MultipartFile**|  | [optional] 
 **photo** | **MultipartFile**|  | [optional] 
 **captionPhoto** | **String**|  | [optional] 

### Return type

[**ReportPost201Response**](ReportPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

