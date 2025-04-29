# strategi_mobile_api.model.Cuaca

## Load the model package
```dart
import 'package:strategi_mobile_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**idLaporanPantau** | **int** | ID of the associated report | [optional] 
**kondisiCuaca** | **String** | Weather condition (e.g., Berangin, Hujan, Cerah) | [optional] 
**jarakPandang** | **double** | Visibility distance in kilometers | [optional] 
**arahAnginDari** | **String** | Wind direction (from) | [optional] 
**arahAnginKe** | **String** | Wind direction (to) | [optional] 
**kecepatanAngin** | **double** | Wind speed in knots | [optional] 
**tinggiGelombang** | **double** | Wave height in meters | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


