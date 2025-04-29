# strategi_mobile_api.api.NewsApi

## Load the API package
```dart
import 'package:strategi_mobile_api/api.dart';
```

All URIs are relative to *http://localhost:3003*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newsRssGet**](NewsApi.md#newsrssget) | **GET** /news/rss | Fetch RSS Feed Data


# **newsRssGet**
> NewsRssGet200Response newsRssGet()

Fetch RSS Feed Data

Retrieves and parses RSS feed data from the specified URL.

### Example
```dart
import 'package:strategi_mobile_api/api.dart';

final api = StrategiMobileApi().getNewsApi();

try {
    final response = api.newsRssGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling NewsApi->newsRssGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NewsRssGet200Response**](NewsRssGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

