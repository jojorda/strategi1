//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:strategi_mobile_api/src/api_util.dart';
import 'package:strategi_mobile_api/src/model/cctv_get200_response.dart';

class CCTVApi {

  final Dio _dio;

  final Serializers _serializers;

  const CCTVApi(this._dio, this._serializers);

  /// Get the list of CCTV streams
  /// Retrieves a list of CCTV stream data with details like location, stream URL, and more. You can filter the results based on specific fields.
  ///
  /// Parameters:
  /// * [matra] - Filter CCTV streams by matra (e.g., \"darat\")
  /// * [namaProvinsi] - Filter CCTV streams by namaProvinsi (e.g., \"Jakarta\")
  /// * [namaKabupatenKota] - Filter CCTV streams by namaKabupatenKota (e.g., \"Cimanggis\")
  /// * [search] - Search CCTV streams by any relevant field (e.g., location name, CCTV name)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CctvGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CctvGet200Response>> cctvGet({ 
    String? matra,
    String? namaProvinsi,
    String? namaKabupatenKota,
    String? search,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/cctv';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (matra != null) r'matra': encodeQueryParameter(_serializers, matra, const FullType(String)),
      if (namaProvinsi != null) r'namaProvinsi': encodeQueryParameter(_serializers, namaProvinsi, const FullType(String)),
      if (namaKabupatenKota != null) r'namaKabupatenKota': encodeQueryParameter(_serializers, namaKabupatenKota, const FullType(String)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CctvGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CctvGet200Response),
      ) as CctvGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CctvGet200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
