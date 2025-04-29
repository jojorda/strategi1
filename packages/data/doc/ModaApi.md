# strategi_mobile_api.api.ModaApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**modaAggregateModaRoutineGet**](ModaApi.md#modaaggregatemodaroutineget) | **GET** /moda/aggregate/{moda}/routine | Aggregate routine data by date range
[**modaAggregateModaSeasonalGet**](ModaApi.md#modaaggregatemodaseasonalget) | **GET** /moda/aggregate/{moda}/seasonal | Aggregate seasonal data for events
[**modaOdModaRoutineDetailGet**](ModaApi.md#modaodmodaroutinedetailget) | **GET** /moda/od/{moda}/routine/detail | Get detail routine OD data for specified date range
[**modaOdModaRoutineGet**](ModaApi.md#modaodmodaroutineget) | **GET** /moda/od/{moda}/routine | Get routine OD data for specified date range
[**modaOdModaSeasonalDetailGet**](ModaApi.md#modaodmodaseasonaldetailget) | **GET** /moda/od/{moda}/seasonal/detail | Get detail seasonal OD data for specified date range
[**modaOdModaSeasonalGet**](ModaApi.md#modaodmodaseasonalget) | **GET** /moda/od/{moda}/seasonal | Get seasonal OD data for specified event
[**modaOperatorsModaFleetsGet**](ModaApi.md#modaoperatorsmodafleetsget) | **GET** /moda/operators/{moda}/fleets | Get list of fleet operators
[**modaOperatorsModaOdGet**](ModaApi.md#modaoperatorsmodaodget) | **GET** /moda/operators/{moda}/od | Get list of od operators
[**modaOperatorsModaRoutineGet**](ModaApi.md#modaoperatorsmodaroutineget) | **GET** /moda/operators/{moda}/routine | Get list of transportation operators
[**modaOperatorsModaSeasonalGet**](ModaApi.md#modaoperatorsmodaseasonalget) | **GET** /moda/operators/{moda}/seasonal | Get list of transportation operators
[**modaRegionalIdLocationRoutineGet**](ModaApi.md#modaregionalidlocationroutineget) | **GET** /moda/regional/{idLocation}/routine | Get detail regional routine data for specified date range and id location
[**modaRegionalIdLocationSeasonalGet**](ModaApi.md#modaregionalidlocationseasonalget) | **GET** /moda/regional/{idLocation}/seasonal | Get detail seasonal regional data for specified event and id location
[**modaRegionalRoutineGet**](ModaApi.md#modaregionalroutineget) | **GET** /moda/regional/routine | Get regional routine data for specified date range and province
[**modaRegionalSeasonalGet**](ModaApi.md#modaregionalseasonalget) | **GET** /moda/regional/seasonal | Get seasonal regional data for specified event and province


# **modaAggregateModaRoutineGet**
> ModaAggregateModaRoutineGet200Response modaAggregateModaRoutineGet(moda, tanggalAwal1, tanggalAkhir1, provinsi)

Aggregate routine data by date range

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String moda = moda_example; // String | Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
final String tanggalAwal1 = 2024-01-01; // String | The start date for the range (format: YYYY-MM-DD)
final String tanggalAkhir1 = 2024-01-07; // String | The end date for the range (format: YYYY-MM-DD)
final String provinsi = Jawa Timur; // String | The province for the data filtering (optional)

try {
    final response = api.modaAggregateModaRoutineGet(moda, tanggalAwal1, tanggalAkhir1, provinsi);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaAggregateModaRoutineGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moda** | **String**| Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll | 
 **tanggalAwal1** | **String**| The start date for the range (format: YYYY-MM-DD) | 
 **tanggalAkhir1** | **String**| The end date for the range (format: YYYY-MM-DD) | 
 **provinsi** | **String**| The province for the data filtering (optional) | [optional] 

### Return type

[**ModaAggregateModaRoutineGet200Response**](ModaAggregateModaRoutineGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaAggregateModaSeasonalGet**
> ModaAggregateModaSeasonalGet200Response modaAggregateModaSeasonalGet(moda, event, provinsi)

Aggregate seasonal data for events

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String moda = moda_example; // String | Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
final String event = Holiday; // String | The event to aggregate seasonal data for
final String provinsi = Jawa Timur; // String | The province for the data filtering (optional)

try {
    final response = api.modaAggregateModaSeasonalGet(moda, event, provinsi);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaAggregateModaSeasonalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moda** | **String**| Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll | 
 **event** | **String**| The event to aggregate seasonal data for | 
 **provinsi** | **String**| The province for the data filtering (optional) | [optional] 

### Return type

[**ModaAggregateModaSeasonalGet200Response**](ModaAggregateModaSeasonalGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaOdModaRoutineDetailGet**
> ModaOdModaRoutineDetailGet200Response modaOdModaRoutineDetailGet(moda, tanggalAwal1, tanggalAkhir1, idOrigin, idDestination)

Get detail routine OD data for specified date range

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String moda = moda_example; // String | Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
final Date tanggalAwal1 = 2013-10-20; // Date | Start date for the data query (format YYYY-MM-DD)
final Date tanggalAkhir1 = 2013-10-20; // Date | End date for the data query (format YYYY-MM-DD)
final String idOrigin = idOrigin_example; // String | Search parameter for filtering
final String idDestination = idDestination_example; // String | Search parameter for filtering

try {
    final response = api.modaOdModaRoutineDetailGet(moda, tanggalAwal1, tanggalAkhir1, idOrigin, idDestination);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaOdModaRoutineDetailGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moda** | **String**| Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll | 
 **tanggalAwal1** | **Date**| Start date for the data query (format YYYY-MM-DD) | 
 **tanggalAkhir1** | **Date**| End date for the data query (format YYYY-MM-DD) | 
 **idOrigin** | **String**| Search parameter for filtering | [optional] 
 **idDestination** | **String**| Search parameter for filtering | [optional] 

### Return type

[**ModaOdModaRoutineDetailGet200Response**](ModaOdModaRoutineDetailGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaOdModaRoutineGet**
> ModaOdModaRoutineGet200Response modaOdModaRoutineGet(moda, tanggalAwal1, tanggalAkhir1, search, type)

Get routine OD data for specified date range

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String moda = moda_example; // String | Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
final Date tanggalAwal1 = 2013-10-20; // Date | Start date for the data query (format YYYY-MM-DD)
final Date tanggalAkhir1 = 2013-10-20; // Date | End date for the data query (format YYYY-MM-DD)
final String search = search_example; // String | Search parameter for filtering
final String type = type_example; // String | Type parameter for filtering domestik or internasional

try {
    final response = api.modaOdModaRoutineGet(moda, tanggalAwal1, tanggalAkhir1, search, type);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaOdModaRoutineGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moda** | **String**| Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll | 
 **tanggalAwal1** | **Date**| Start date for the data query (format YYYY-MM-DD) | 
 **tanggalAkhir1** | **Date**| End date for the data query (format YYYY-MM-DD) | 
 **search** | **String**| Search parameter for filtering | [optional] 
 **type** | **String**| Type parameter for filtering domestik or internasional | [optional] 

### Return type

[**ModaOdModaRoutineGet200Response**](ModaOdModaRoutineGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaOdModaSeasonalDetailGet**
> ModaOdModaRoutineDetailGet200Response modaOdModaSeasonalDetailGet(moda, event, idOrigin, idDestination)

Get detail seasonal OD data for specified date range

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String moda = moda_example; // String | Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
final String event = event_example; // String | The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\")
final String idOrigin = idOrigin_example; // String | Search parameter for filtering
final String idDestination = idDestination_example; // String | Search parameter for filtering

try {
    final response = api.modaOdModaSeasonalDetailGet(moda, event, idOrigin, idDestination);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaOdModaSeasonalDetailGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moda** | **String**| Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll | 
 **event** | **String**| The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\") | 
 **idOrigin** | **String**| Search parameter for filtering | [optional] 
 **idDestination** | **String**| Search parameter for filtering | [optional] 

### Return type

[**ModaOdModaRoutineDetailGet200Response**](ModaOdModaRoutineDetailGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaOdModaSeasonalGet**
> ModaOdModaRoutineGet200Response modaOdModaSeasonalGet(moda, event, search, type)

Get seasonal OD data for specified event

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String moda = moda_example; // String | Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
final String event = event_example; // String | The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\")
final String search = search_example; // String | Search parameter for filtering
final String type = type_example; // String | Type parameter for filtering domestik or internasional

try {
    final response = api.modaOdModaSeasonalGet(moda, event, search, type);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaOdModaSeasonalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moda** | **String**| Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll | 
 **event** | **String**| The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\") | 
 **search** | **String**| Search parameter for filtering | [optional] 
 **type** | **String**| Type parameter for filtering domestik or internasional | [optional] 

### Return type

[**ModaOdModaRoutineGet200Response**](ModaOdModaRoutineGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaOperatorsModaFleetsGet**
> ModaOperatorsModaFleetsGet200Response modaOperatorsModaFleetsGet(moda, idOperator, page, limit, search, sortColumn, sortDirection)

Get list of fleet operators

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String moda = moda_example; // String | 
final String idOperator = idOperator_example; // String | Id of the operator
final int page = 56; // int | Page number for pagination
final int limit = 56; // int | Number of items per page
final String search = search_example; // String | Filter by search term
final String sortColumn = sortColumn_example; // String | Define column for sorting
final String sortDirection = sortDirection_example; // String | Define direction for sorting (asc or desc)

try {
    final response = api.modaOperatorsModaFleetsGet(moda, idOperator, page, limit, search, sortColumn, sortDirection);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaOperatorsModaFleetsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moda** | **String**|  | 
 **idOperator** | **String**| Id of the operator | 
 **page** | **int**| Page number for pagination | [optional] [default to 1]
 **limit** | **int**| Number of items per page | [optional] [default to 10]
 **search** | **String**| Filter by search term | [optional] 
 **sortColumn** | **String**| Define column for sorting | [optional] 
 **sortDirection** | **String**| Define direction for sorting (asc or desc) | [optional] 

### Return type

[**ModaOperatorsModaFleetsGet200Response**](ModaOperatorsModaFleetsGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaOperatorsModaOdGet**
> ModaOperatorsModaOdGet200Response modaOperatorsModaOdGet(moda, idOperator, page, limit, search)

Get list of od operators

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String moda = moda_example; // String | 
final String idOperator = idOperator_example; // String | Id of the operator
final int page = 56; // int | Page number for pagination
final int limit = 56; // int | Number of items per page
final String search = search_example; // String | Filter by search term

try {
    final response = api.modaOperatorsModaOdGet(moda, idOperator, page, limit, search);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaOperatorsModaOdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moda** | **String**|  | 
 **idOperator** | **String**| Id of the operator | 
 **page** | **int**| Page number for pagination | [optional] [default to 1]
 **limit** | **int**| Number of items per page | [optional] [default to 10]
 **search** | **String**| Filter by search term | [optional] 

### Return type

[**ModaOperatorsModaOdGet200Response**](ModaOperatorsModaOdGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaOperatorsModaRoutineGet**
> BuiltList<ModaOperatorsModaRoutineGet200ResponseInner> modaOperatorsModaRoutineGet(moda, dateStart, dateEnd, period, search, sortColumn, sortDirection)

Get list of transportation operators

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String moda = moda_example; // String | 
final Date dateStart = 2013-10-20; // Date | Start date for filtering data
final Date dateEnd = 2013-10-20; // Date | End date for filtering data
final String period = period_example; // String | Data aggregation period
final String search = search_example; // String | Search term for filtering operators
final String sortColumn = sortColumn_example; // String | Define column for sorting
final String sortDirection = sortDirection_example; // String | Define direction for sorting (asc or desc)

try {
    final response = api.modaOperatorsModaRoutineGet(moda, dateStart, dateEnd, period, search, sortColumn, sortDirection);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaOperatorsModaRoutineGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moda** | **String**|  | 
 **dateStart** | **Date**| Start date for filtering data | [optional] 
 **dateEnd** | **Date**| End date for filtering data | [optional] 
 **period** | **String**| Data aggregation period | [optional] 
 **search** | **String**| Search term for filtering operators | [optional] 
 **sortColumn** | **String**| Define column for sorting | [optional] 
 **sortDirection** | **String**| Define direction for sorting (asc or desc) | [optional] 

### Return type

[**BuiltList&lt;ModaOperatorsModaRoutineGet200ResponseInner&gt;**](ModaOperatorsModaRoutineGet200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaOperatorsModaSeasonalGet**
> BuiltList<ModaOperatorsModaRoutineGet200ResponseInner> modaOperatorsModaSeasonalGet(moda, event, search, sortColumn, sortDirection)

Get list of transportation operators

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String moda = moda_example; // String | 
final String event = event_example; // String | Data aggregation event
final String search = search_example; // String | Search term for filtering operators
final String sortColumn = sortColumn_example; // String | Define column for sorting
final String sortDirection = sortDirection_example; // String | Define direction for sorting (asc or desc)

try {
    final response = api.modaOperatorsModaSeasonalGet(moda, event, search, sortColumn, sortDirection);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaOperatorsModaSeasonalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moda** | **String**|  | 
 **event** | **String**| Data aggregation event | [optional] 
 **search** | **String**| Search term for filtering operators | [optional] 
 **sortColumn** | **String**| Define column for sorting | [optional] 
 **sortDirection** | **String**| Define direction for sorting (asc or desc) | [optional] 

### Return type

[**BuiltList&lt;ModaOperatorsModaRoutineGet200ResponseInner&gt;**](ModaOperatorsModaRoutineGet200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaRegionalIdLocationRoutineGet**
> ModaRegionalIdLocationRoutineGet200Response modaRegionalIdLocationRoutineGet(idLocation, tanggalAwal1, tanggalAkhir1, type, moda)

Get detail regional routine data for specified date range and id location

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String idLocation = idLocation_example; // String | Id location
final Date tanggalAwal1 = 2013-10-20; // Date | Start date for the data query (format YYYY-MM-DD)
final Date tanggalAkhir1 = 2013-10-20; // Date | End date for the data query (format YYYY-MM-DD)
final String type = type_example; // String | Optional type parameter for filtering (domestik or internasional)
final String moda = moda_example; // String | Optional type parameter for determine which moda to use

try {
    final response = api.modaRegionalIdLocationRoutineGet(idLocation, tanggalAwal1, tanggalAkhir1, type, moda);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaRegionalIdLocationRoutineGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idLocation** | **String**| Id location | 
 **tanggalAwal1** | **Date**| Start date for the data query (format YYYY-MM-DD) | 
 **tanggalAkhir1** | **Date**| End date for the data query (format YYYY-MM-DD) | 
 **type** | **String**| Optional type parameter for filtering (domestik or internasional) | [optional] 
 **moda** | **String**| Optional type parameter for determine which moda to use | [optional] 

### Return type

[**ModaRegionalIdLocationRoutineGet200Response**](ModaRegionalIdLocationRoutineGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaRegionalIdLocationSeasonalGet**
> ModaRegionalIdLocationRoutineGet200Response modaRegionalIdLocationSeasonalGet(idLocation, event, type, moda)

Get detail seasonal regional data for specified event and id location

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String idLocation = idLocation_example; // String | Id location
final String event = event_example; // String | The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\")
final String type = type_example; // String | Optional type parameter for filtering (domestik or internasional)
final String moda = moda_example; // String | Optional type parameter for determine which moda to use

try {
    final response = api.modaRegionalIdLocationSeasonalGet(idLocation, event, type, moda);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaRegionalIdLocationSeasonalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idLocation** | **String**| Id location | 
 **event** | **String**| The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\") | 
 **type** | **String**| Optional type parameter for filtering (domestik or internasional) | [optional] 
 **moda** | **String**| Optional type parameter for determine which moda to use | [optional] 

### Return type

[**ModaRegionalIdLocationRoutineGet200Response**](ModaRegionalIdLocationRoutineGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaRegionalRoutineGet**
> ModaRegionalRoutineGet200Response modaRegionalRoutineGet(tanggalAwal1, tanggalAkhir1, provinsi, type, moda)

Get regional routine data for specified date range and province

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final Date tanggalAwal1 = 2013-10-20; // Date | Start date for the data query (format YYYY-MM-DD)
final Date tanggalAkhir1 = 2013-10-20; // Date | End date for the data query (format YYYY-MM-DD)
final String provinsi = provinsi_example; // String | Province name to filter the data
final String type = type_example; // String | Optional type parameter for filtering (domestik or internasional)
final String moda = moda_example; // String | Optional type parameter for determine which moda to use

try {
    final response = api.modaRegionalRoutineGet(tanggalAwal1, tanggalAkhir1, provinsi, type, moda);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaRegionalRoutineGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tanggalAwal1** | **Date**| Start date for the data query (format YYYY-MM-DD) | 
 **tanggalAkhir1** | **Date**| End date for the data query (format YYYY-MM-DD) | 
 **provinsi** | **String**| Province name to filter the data | 
 **type** | **String**| Optional type parameter for filtering (domestik or internasional) | [optional] 
 **moda** | **String**| Optional type parameter for determine which moda to use | [optional] 

### Return type

[**ModaRegionalRoutineGet200Response**](ModaRegionalRoutineGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modaRegionalSeasonalGet**
> ModaRegionalRoutineGet200Response modaRegionalSeasonalGet(event, provinsi, type, moda)

Get seasonal regional data for specified event and province

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getModaApi();
final String event = event_example; // String | The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\")
final String provinsi = provinsi_example; // String | Province name to filter the data
final String type = type_example; // String | Optional type parameter for filtering (domestik or internasional)
final String moda = moda_example; // String | Optional type parameter for determine which moda to use

try {
    final response = api.modaRegionalSeasonalGet(event, provinsi, type, moda);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModaApi->modaRegionalSeasonalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event** | **String**| The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\") | 
 **provinsi** | **String**| Province name to filter the data | 
 **type** | **String**| Optional type parameter for filtering (domestik or internasional) | [optional] 
 **moda** | **String**| Optional type parameter for determine which moda to use | [optional] 

### Return type

[**ModaRegionalRoutineGet200Response**](ModaRegionalRoutineGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

