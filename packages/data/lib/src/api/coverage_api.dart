//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:strategi_mobile_api/src/api_util.dart';
import 'package:strategi_mobile_api/src/model/coverage_get200_response.dart';
import 'package:strategi_mobile_api/src/model/date.dart';

class CoverageApi {

  final Dio _dio;

  final Serializers _serializers;

  const CoverageApi(this._dio, this._serializers);

  /// Get the list of video coverage
  /// Retrieves a list of video coverage data with details like location, stream URL, and more. You can filter the results based on specific fields.
  ///
  /// Parameters:
  /// * [tanggalAwal] - Start date for filter by schedule date (optional)
  /// * [tanggalAkhir] - End date for filter by schedule date (optional)
  /// * [matra] - Matra name for filter by matra (optional)
  /// * [kontributor] - Contributor name for filter by contributor (optional)
  /// * [tipeLokasi] - Location type for filter (optional)
  /// * [tipeMedia] - Media type for filter (optional)
  /// * [statusLive] - Status live for filter (optional)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CoverageGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CoverageGet200Response>> coverageGet({ 
    Date? tanggalAwal,
    Date? tanggalAkhir,
    String? matra,
    String? kontributor,
    String? tipeLokasi,
    String? tipeMedia,
    String? statusLive,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/coverage';
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
      if (tanggalAwal != null) r'tanggalAwal': encodeQueryParameter(_serializers, tanggalAwal, const FullType(Date)),
      if (tanggalAkhir != null) r'tanggalAkhir': encodeQueryParameter(_serializers, tanggalAkhir, const FullType(Date)),
      if (matra != null) r'matra': encodeQueryParameter(_serializers, matra, const FullType(String)),
      if (kontributor != null) r'kontributor': encodeQueryParameter(_serializers, kontributor, const FullType(String)),
      if (tipeLokasi != null) r'tipeLokasi': encodeQueryParameter(_serializers, tipeLokasi, const FullType(String)),
      if (tipeMedia != null) r'tipeMedia': encodeQueryParameter(_serializers, tipeMedia, const FullType(String)),
      if (statusLive != null) r'statusLive': encodeQueryParameter(_serializers, statusLive, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CoverageGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CoverageGet200Response),
      ) as CoverageGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CoverageGet200Response>(
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
