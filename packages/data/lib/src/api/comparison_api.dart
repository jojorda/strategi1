//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:strategi_mobile_api/src/api_util.dart';
import 'package:strategi_mobile_api/src/model/comparison_get200_response.dart';
import 'package:strategi_mobile_api/src/model/comparison_get400_response.dart';
import 'package:strategi_mobile_api/src/model/comparison_get500_response.dart';
import 'package:strategi_mobile_api/src/model/date.dart';

class ComparisonApi {

  final Dio _dio;

  final Serializers _serializers;

  const ComparisonApi(this._dio, this._serializers);

  /// Compare transportation data
  /// Fetches transportation comparison data based on routine or seasonal inputs.
  ///
  /// Parameters:
  /// * [idLocation] - Location ID for filtering
  /// * [moda] - Mode of transportation
  /// * [tanggalAwal1] - Start date for routine data (optional)
  /// * [tanggalAkhir1] - End date for routine data (optional)
  /// * [event] - Event name for seasonal data (optional)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ComparisonGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ComparisonGet200Response>> comparisonGet({ 
    required int idLocation,
    required String moda,
    Date? tanggalAwal1,
    Date? tanggalAkhir1,
    String? event,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/comparison';
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
      if (tanggalAwal1 != null) r'tanggalAwal1': encodeQueryParameter(_serializers, tanggalAwal1, const FullType(Date)),
      if (tanggalAkhir1 != null) r'tanggalAkhir1': encodeQueryParameter(_serializers, tanggalAkhir1, const FullType(Date)),
      if (event != null) r'event': encodeQueryParameter(_serializers, event, const FullType(String)),
      r'idLocation': encodeQueryParameter(_serializers, idLocation, const FullType(int)),
      r'moda': encodeQueryParameter(_serializers, moda, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ComparisonGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ComparisonGet200Response),
      ) as ComparisonGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ComparisonGet200Response>(
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
