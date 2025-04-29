# strategi_mobile_api.api.IncidentReportApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**incidentReportGet**](IncidentReportApi.md#incidentreportget) | **GET** /incident-report | Get a paginated list of incident report with optional filtering
[**incidentReportIdApprovePost**](IncidentReportApi.md#incidentreportidapprovepost) | **POST** /incident-report/{id}/approve | Approve an incident report
[**incidentReportIdDelete**](IncidentReportApi.md#incidentreportiddelete) | **DELETE** /incident-report/{id} | Delete an existing incident report
[**incidentReportIdGet**](IncidentReportApi.md#incidentreportidget) | **GET** /incident-report/{id} | Get detailed information about a specific incident report
[**incidentReportIdPut**](IncidentReportApi.md#incidentreportidput) | **PUT** /incident-report/{id} | Update an existing incident report
[**incidentReportIdRejectPost**](IncidentReportApi.md#incidentreportidrejectpost) | **POST** /incident-report/{id}/reject | Reject an incident report
[**incidentReportPost**](IncidentReportApi.md#incidentreportpost) | **POST** /incident-report | Create a new incident report


# **incidentReportGet**
> IncidentReportGet200Response incidentReportGet(page, limit, status, moda, startDate, endDate, dateField, category)

Get a paginated list of incident report with optional filtering

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getIncidentReportApi();
final int page = 56; // int | Page number for pagination
final int limit = 56; // int | Number of items per page
final int status = 56; // int | Filter by report status
final String moda = moda_example; // String | Filter by transportation mode
final Date startDate = 2013-10-20; // Date | Start date for filtering (ISO format)
final Date endDate = 2013-10-20; // Date | End date for filtering (ISO format, must be >= startDate)
final String dateField = dateField_example; // String | Specifies which date field to filter by
final String category = category_example; // String | Specifies which date field to filter by

try {
    final response = api.incidentReportGet(page, limit, status, moda, startDate, endDate, dateField, category);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IncidentReportApi->incidentReportGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number for pagination | [optional] [default to 1]
 **limit** | **int**| Number of items per page | [optional] [default to 10]
 **status** | **int**| Filter by report status | [optional] 
 **moda** | **String**| Filter by transportation mode | [optional] 
 **startDate** | **Date**| Start date for filtering (ISO format) | [optional] 
 **endDate** | **Date**| End date for filtering (ISO format, must be >= startDate) | [optional] 
 **dateField** | **String**| Specifies which date field to filter by | [optional] [default to 'waktuKejadian']
 **category** | **String**| Specifies which date field to filter by | [optional] 

### Return type

[**IncidentReportGet200Response**](IncidentReportGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **incidentReportIdApprovePost**
> IncidentReportIdApprovePost200Response incidentReportIdApprovePost(id, incidentReportIdApprovePostRequest)

Approve an incident report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getIncidentReportApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the incident report to approve
final IncidentReportIdApprovePostRequest incidentReportIdApprovePostRequest = ; // IncidentReportIdApprovePostRequest | 

try {
    final response = api.incidentReportIdApprovePost(id, incidentReportIdApprovePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IncidentReportApi->incidentReportIdApprovePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the incident report to approve | 
 **incidentReportIdApprovePostRequest** | [**IncidentReportIdApprovePostRequest**](IncidentReportIdApprovePostRequest.md)|  | 

### Return type

[**IncidentReportIdApprovePost200Response**](IncidentReportIdApprovePost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **incidentReportIdDelete**
> IncidentReportIdDelete200Response incidentReportIdDelete(id)

Delete an existing incident report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getIncidentReportApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the incident report to delete

try {
    final response = api.incidentReportIdDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IncidentReportApi->incidentReportIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the incident report to delete | 

### Return type

[**IncidentReportIdDelete200Response**](IncidentReportIdDelete200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **incidentReportIdGet**
> IncidentReportIdGet200Response incidentReportIdGet(id)

Get detailed information about a specific incident report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getIncidentReportApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the incident report to retrieve

try {
    final response = api.incidentReportIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IncidentReportApi->incidentReportIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the incident report to retrieve | 

### Return type

[**IncidentReportIdGet200Response**](IncidentReportIdGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **incidentReportIdPut**
> IncidentReportIdPut200Response incidentReportIdPut(id, incidentReportIdPutRequest)

Update an existing incident report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getIncidentReportApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the incident report to update
final IncidentReportIdPutRequest incidentReportIdPutRequest = ; // IncidentReportIdPutRequest | 

try {
    final response = api.incidentReportIdPut(id, incidentReportIdPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IncidentReportApi->incidentReportIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the incident report to update | 
 **incidentReportIdPutRequest** | [**IncidentReportIdPutRequest**](IncidentReportIdPutRequest.md)|  | 

### Return type

[**IncidentReportIdPut200Response**](IncidentReportIdPut200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **incidentReportIdRejectPost**
> IncidentReportIdRejectPost200Response incidentReportIdRejectPost(id, incidentReportIdRejectPostRequest)

Reject an incident report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getIncidentReportApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the incident report to reject
final IncidentReportIdRejectPostRequest incidentReportIdRejectPostRequest = ; // IncidentReportIdRejectPostRequest | 

try {
    final response = api.incidentReportIdRejectPost(id, incidentReportIdRejectPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IncidentReportApi->incidentReportIdRejectPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the incident report to reject | 
 **incidentReportIdRejectPostRequest** | [**IncidentReportIdRejectPostRequest**](IncidentReportIdRejectPostRequest.md)|  | 

### Return type

[**IncidentReportIdRejectPost200Response**](IncidentReportIdRejectPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **incidentReportPost**
> incidentReportPost(incidentReportPostRequest)

Create a new incident report

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getIncidentReportApi();
final IncidentReportPostRequest incidentReportPostRequest = ; // IncidentReportPostRequest | 

try {
    api.incidentReportPost(incidentReportPostRequest);
} catch on DioException (e) {
    print('Exception when calling IncidentReportApi->incidentReportPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incidentReportPostRequest** | [**IncidentReportPostRequest**](IncidentReportPostRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

