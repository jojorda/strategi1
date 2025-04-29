# strategi_mobile_api.model.Report

## Load the model package
```dart
import 'package:strategi_mobile_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**type** | **String** |  | [optional] 
**matra** | **String** | Transportation mode (Darat, Laut, Udara, etc.) | [optional] 
**event** | **String** |  | [optional] 
**nama** | **String** |  | [optional] 
**personil** | **String** |  | [optional] 
**pengikut** | **String** | Comma separated (,) | [optional] 
**tanggal** | [**Date**](Date.md) |  | [optional] 
**provinsi** | **String** |  | [optional] 
**kabupaten** | **String** |  | [optional] 
**angkutan** | **String** |  | [optional] 
**unitPelayanan** | **String** |  | [optional] 
**deskripsi** | **String** |  | [optional] 
**isKejadianMenonjol** | **bool** |  | [optional] [default to false]
**kejadianMenonjol** | **String** |  | [optional] 
**koordinatKejadianMenonjol** | **String** |  | [optional] 
**isKecelakaan** | **bool** |  | [optional] [default to false]
**kecelakaan** | **String** |  | [optional] 
**koordinatKecelakaan** | **String** |  | [optional] 
**lokasiKecelakaan** | **String** |  | [optional] 
**pembuat** | **String** |  | [optional] 
**persetujuan** | **String** |  | [optional] 
**file** | **String** |  | [optional] 
**photo** | **String** |  | [optional] 
**captionPhoto** | **String** |  | [optional] 
**isApproved** | **bool** |  | [optional] 
**approvedBy** | **String** |  | [optional] 
**approvedDate** | **String** |  | [optional] 
**approvedNotes** | **String** |  | [optional] 
**rejectedBy** | **String** |  | [optional] 
**rejectedDate** | **String** |  | [optional] 
**rejectedReason** | **String** |  | [optional] 
**rejectedAdditionalComments** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**kecelakaanList** | [**BuiltList&lt;Kecelakaan&gt;**](Kecelakaan.md) |  | [optional] 
**cuacaList** | [**BuiltList&lt;Cuaca&gt;**](Cuaca.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


