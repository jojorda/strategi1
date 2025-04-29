# strategi_mobile_api.model.ComparisonGet200ResponseDataInner

## Load the model package
```dart
import 'package:strategi_mobile_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**moda** | **String** |  | [optional] 
**idLocation** | **int** |  | [optional] 
**location** | **String** |  | [optional] 
**arrivalSummary** | **int** |  | [optional] 
**departureSummary** | **int** |  | [optional] 
**vehicleArrivalSummary** | **int** |  | [optional] 
**vehicleDepartureSummary** | **int** |  | [optional] 
**weekly** | [**BuiltMap&lt;String, ComparisonGet200ResponseDataInnerWeeklyValue&gt;**](ComparisonGet200ResponseDataInnerWeeklyValue.md) |  | [optional] 
**monthly** | [**BuiltMap&lt;String, ComparisonGet200ResponseDataInnerWeeklyValue&gt;**](ComparisonGet200ResponseDataInnerWeeklyValue.md) |  | [optional] 
**yearly** | [**BuiltMap&lt;String, ComparisonGet200ResponseDataInnerWeeklyValue&gt;**](ComparisonGet200ResponseDataInnerWeeklyValue.md) |  | [optional] 
**seasonal** | [**BuiltMap&lt;String, ComparisonGet200ResponseDataInnerSeasonalValue&gt;**](ComparisonGet200ResponseDataInnerSeasonalValue.md) | Data for seasonal events (only present if `event` is provided) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


