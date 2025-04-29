# strategi_mobile_api.model.Kecelakaan

## Load the model package
```dart
import 'package:strategi_mobile_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**idLaporanPantau** | **int** | ID of the associated report | [optional] 
**matra** | **String** | Transportation mode (Darat, Laut, Udara, etc.) | [optional] 
**tanggalWaktuKejadian** | [**DateTime**](DateTime.md) | Date and time of the accident | [optional] 
**jenisKecelakaan** | **String** | Type of accident | [optional] 
**uraian** | **String** | Detailed description of the accident | [optional] 
**korbanJiwa** | **int** | Number of fatalities | [optional] 
**lukaBerat** | **int** | Number of seriously injured people | [optional] 
**lukaRingan** | **int** | Number of slightly injured people | [optional] 
**hilang** | **int** | Number of missing people | [optional] 
**selamat** | **int** | Number of survivors | [optional] 
**dampakLingkunganJenis** | **String** | Type of environmental impact | [optional] 
**dampakLingkunganUraian** | **String** | Description of environmental impact | [optional] 
**dampakLaluLintasJenis** | **String** | Type of traffic impact | [optional] 
**dampakLaluLintasUraian** | **String** | Description of traffic impact | [optional] 
**statusPenanggulanganJenis** | **String** | Type of response/mitigation status | [optional] 
**statusPenanggulanganUraian** | **String** | Description of response/mitigation efforts | [optional] 
**lokasi** | **String** | Location description of the accident | [optional] 
**koordinat** | **String** | Geographic coordinates of the accident location | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


