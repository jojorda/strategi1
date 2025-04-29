# strategi_mobile_api.model.IncidentReportIdPutRequestLaporanKejadianDetail

## Load the model package
```dart
import 'package:strategi_mobile_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**matra** | **String** | Military or other relevant sector involved | 
**picPelapor** | **String** |  | [optional] 
**jenisKecelakaan** | **String** | Type of the accident | 
**saranaTerlibat** | **BuiltList&lt;String&gt;** | Vehicles involved in the incident | [optional] 
**korbanMeninggalDunia** | **num** | Number of fatalities | [optional] 
**korbanLukaBerat** | **num** | Number of severely injured people | [optional] 
**korbanLukaSedang** | **num** | Number of moderately injured people | [optional] 
**korbanLukaRingan** | **num** | Number of lightly injured people | [optional] 
**korbanHilang** | **num** | Number of missing people | [optional] 
**korbanSelamat** | **num** | Number of survivors | [optional] 
**onScheneCommander** | **String** | Person in charge at the scene | [optional] 
**kerusakanFisik** | **String** | Physical damage caused by the incident | [optional] 
**dampakLingkungan** | **String** | Environmental impact of the incident | [optional] 
**dampakLaluLintas** | **String** | Traffic impact of the incident | [optional] 
**statusPenanggulangan** | **String** | Status of the incident handling | [optional] 
**laporanFinal** | **String** | Final report status | [optional] 
**isApproved** | **bool** | Approval status of the report | [optional] 
**approvedBy** | **String** | Name of the person who approved the report | [optional] 
**approvedDate** | **String** | Date of approval | [optional] 
**notes** | **String** | Additional notes | [optional] 
**rejectedBy** | **String** | Name of the person who rejected the report | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


