# strategi_mobile_api.model.IncidentReportIdPutRequest

## Load the model package
```dart
import 'package:strategi_mobile_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nama** | **String** | Name of the reporter | 
**email** | **String** | Email of the reporter | [optional] 
**noHp** | **String** | Reporter's phone number | [optional] 
**waktuKejadian** | **String** | When the incident occurred | 
**kronologiKejadian** | **String** | Detailed chronology of the incident | 
**dataPendukung** | **BuiltList&lt;String&gt;** | Supporting data files (usually file paths or URLs) | [optional] 
**lokasi** | **String** | Location description of the incident | 
**longitude** | **double** | Longitude coordinate of the incident | [optional] 
**latitude** | **double** | Latitude coordinate of the incident | [optional] 
**modaTransportasi** | **String** | Mode of transportation involved | [optional] 
**kategori** | **String** | Category of the incident | [optional] 
**unitKerja** | **String** | Working unit related to the incident | [optional] 
**laporanKejadianDetail** | [**IncidentReportIdPutRequestLaporanKejadianDetail**](IncidentReportIdPutRequestLaporanKejadianDetail.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


