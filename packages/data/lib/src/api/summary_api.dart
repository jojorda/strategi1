//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:strategi_mobile_api/src/api_util.dart';
import 'package:strategi_mobile_api/src/model/auth_login_post500_response.dart';
import 'package:strategi_mobile_api/src/model/summary_routine_get200_response.dart';
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response.dart';
import 'package:strategi_mobile_api/src/model/summary_seasonal_get400_response.dart';

class SummaryApi {

  final Dio _dio;

  final Serializers _serializers;

  const SummaryApi(this._dio, this._serializers);

  /// Get seasonal production data
  /// Fetches data related to seasonal production and returns the summarized data.
  ///
  /// Parameters:
  /// * [tanggalAwal1] - Start date of the first period
  /// * [tanggalAkhir1] - End date of the first period
  /// * [provinsi] - Province filter (optional)
  /// * [moda] - Mode of transport filter (optional)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SummaryRoutineGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SummaryRoutineGet200Response>> summaryRoutineGet({ 
    required String tanggalAwal1,
    required String tanggalAkhir1,
    String? provinsi,
    String? moda,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/summary/routine';
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
      r'tanggalAwal1': encodeQueryParameter(_serializers, tanggalAwal1, const FullType(String)),
      r'tanggalAkhir1': encodeQueryParameter(_serializers, tanggalAkhir1, const FullType(String)),
      if (provinsi != null) r'provinsi': encodeQueryParameter(_serializers, provinsi, const FullType(String)),
      if (moda != null) r'moda': encodeQueryParameter(_serializers, moda, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    SummaryRoutineGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SummaryRoutineGet200Response),
      ) as SummaryRoutineGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SummaryRoutineGet200Response>(
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

  /// Retrieve seasonal routine monitoring data
  /// Fetches seasonal routine data based on given date ranges and optional filters.
  ///
  /// Parameters:
  /// * [event] - The event for which routine data is being fetched.
  /// * [provinsi] - The province to filter the data (optional).
  /// * [moda] - The mode of transportation to filter the data (optional).
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SummarySeasonalGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SummarySeasonalGet200Response>> summarySeasonalGet({ 
    required String event,
    String? provinsi,
    String? moda,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/summary/seasonal';
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
      r'event': encodeQueryParameter(_serializers, event, const FullType(String)),
      if (provinsi != null) r'provinsi': encodeQueryParameter(_serializers, provinsi, const FullType(String)),
      if (moda != null) r'moda': encodeQueryParameter(_serializers, moda, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    SummarySeasonalGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SummarySeasonalGet200Response),
      ) as SummarySeasonalGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SummarySeasonalGet200Response>(
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
