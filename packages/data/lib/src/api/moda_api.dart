//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/api_util.dart';
import 'package:strategi_mobile_api/src/model/auth_login_post500_response.dart';
import 'package:strategi_mobile_api/src/model/date.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get400_response.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_seasonal_get200_response.dart';
import 'package:strategi_mobile_api/src/model/moda_od_moda_routine_detail_get200_response.dart';
import 'package:strategi_mobile_api/src/model/moda_od_moda_routine_get200_response.dart';
import 'package:strategi_mobile_api/src/model/moda_operators_moda_fleets_get200_response.dart';
import 'package:strategi_mobile_api/src/model/moda_operators_moda_od_get200_response.dart';
import 'package:strategi_mobile_api/src/model/moda_operators_moda_routine_get200_response_inner.dart';
import 'package:strategi_mobile_api/src/model/moda_regional_id_location_routine_get200_response.dart';
import 'package:strategi_mobile_api/src/model/moda_regional_routine_get200_response.dart';
import 'package:strategi_mobile_api/src/model/moda_regional_routine_get400_response.dart';
import 'package:strategi_mobile_api/src/model/moda_regional_seasonal_get400_response.dart';

class ModaApi {

  final Dio _dio;

  final Serializers _serializers;

  const ModaApi(this._dio, this._serializers);

  /// Aggregate routine data by date range
  /// 
  ///
  /// Parameters:
  /// * [moda] - Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
  /// * [tanggalAwal1] - The start date for the range (format: YYYY-MM-DD)
  /// * [tanggalAkhir1] - The end date for the range (format: YYYY-MM-DD)
  /// * [provinsi] - The province for the data filtering (optional)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaAggregateModaRoutineGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaAggregateModaRoutineGet200Response>> modaAggregateModaRoutineGet({ 
    required String moda,
    required String tanggalAwal1,
    required String tanggalAkhir1,
    String? provinsi,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/aggregate/{moda}/routine'.replaceAll('{' r'moda' '}', encodeQueryParameter(_serializers, moda, const FullType(String)).toString());
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ModaAggregateModaRoutineGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaAggregateModaRoutineGet200Response),
      ) as ModaAggregateModaRoutineGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaAggregateModaRoutineGet200Response>(
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

  /// Aggregate seasonal data for events
  /// 
  ///
  /// Parameters:
  /// * [moda] - Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
  /// * [event] - The event to aggregate seasonal data for
  /// * [provinsi] - The province for the data filtering (optional)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaAggregateModaSeasonalGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaAggregateModaSeasonalGet200Response>> modaAggregateModaSeasonalGet({ 
    required String moda,
    required String event,
    String? provinsi,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/aggregate/{moda}/seasonal'.replaceAll('{' r'moda' '}', encodeQueryParameter(_serializers, moda, const FullType(String)).toString());
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ModaAggregateModaSeasonalGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaAggregateModaSeasonalGet200Response),
      ) as ModaAggregateModaSeasonalGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaAggregateModaSeasonalGet200Response>(
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

  /// Get detail routine OD data for specified date range
  /// 
  ///
  /// Parameters:
  /// * [moda] - Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
  /// * [tanggalAwal1] - Start date for the data query (format YYYY-MM-DD)
  /// * [tanggalAkhir1] - End date for the data query (format YYYY-MM-DD)
  /// * [idOrigin] - Search parameter for filtering
  /// * [idDestination] - Search parameter for filtering
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaOdModaRoutineDetailGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaOdModaRoutineDetailGet200Response>> modaOdModaRoutineDetailGet({ 
    required String moda,
    required Date tanggalAwal1,
    required Date tanggalAkhir1,
    String? idOrigin,
    String? idDestination,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/od/{moda}/routine/detail'.replaceAll('{' r'moda' '}', encodeQueryParameter(_serializers, moda, const FullType(String)).toString());
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
      r'tanggalAwal1': encodeQueryParameter(_serializers, tanggalAwal1, const FullType(Date)),
      r'tanggalAkhir1': encodeQueryParameter(_serializers, tanggalAkhir1, const FullType(Date)),
      if (idOrigin != null) r'idOrigin': encodeQueryParameter(_serializers, idOrigin, const FullType(String)),
      if (idDestination != null) r'idDestination': encodeQueryParameter(_serializers, idDestination, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ModaOdModaRoutineDetailGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaOdModaRoutineDetailGet200Response),
      ) as ModaOdModaRoutineDetailGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaOdModaRoutineDetailGet200Response>(
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

  /// Get routine OD data for specified date range
  /// 
  ///
  /// Parameters:
  /// * [moda] - Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
  /// * [tanggalAwal1] - Start date for the data query (format YYYY-MM-DD)
  /// * [tanggalAkhir1] - End date for the data query (format YYYY-MM-DD)
  /// * [search] - Search parameter for filtering
  /// * [type] - Type parameter for filtering domestik or internasional
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaOdModaRoutineGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaOdModaRoutineGet200Response>> modaOdModaRoutineGet({ 
    required String moda,
    required Date tanggalAwal1,
    required Date tanggalAkhir1,
    String? search,
    String? type,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/od/{moda}/routine'.replaceAll('{' r'moda' '}', encodeQueryParameter(_serializers, moda, const FullType(String)).toString());
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
      r'tanggalAwal1': encodeQueryParameter(_serializers, tanggalAwal1, const FullType(Date)),
      r'tanggalAkhir1': encodeQueryParameter(_serializers, tanggalAkhir1, const FullType(Date)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ModaOdModaRoutineGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaOdModaRoutineGet200Response),
      ) as ModaOdModaRoutineGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaOdModaRoutineGet200Response>(
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

  /// Get detail seasonal OD data for specified date range
  /// 
  ///
  /// Parameters:
  /// * [moda] - Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
  /// * [event] - The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\")
  /// * [idOrigin] - Search parameter for filtering
  /// * [idDestination] - Search parameter for filtering
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaOdModaRoutineDetailGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaOdModaRoutineDetailGet200Response>> modaOdModaSeasonalDetailGet({ 
    required String moda,
    required String event,
    String? idOrigin,
    String? idDestination,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/od/{moda}/seasonal/detail'.replaceAll('{' r'moda' '}', encodeQueryParameter(_serializers, moda, const FullType(String)).toString());
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
      if (idOrigin != null) r'idOrigin': encodeQueryParameter(_serializers, idOrigin, const FullType(String)),
      if (idDestination != null) r'idDestination': encodeQueryParameter(_serializers, idDestination, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ModaOdModaRoutineDetailGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaOdModaRoutineDetailGet200Response),
      ) as ModaOdModaRoutineDetailGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaOdModaRoutineDetailGet200Response>(
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

  /// Get seasonal OD data for specified event
  /// 
  ///
  /// Parameters:
  /// * [moda] - Moda transportation option : jalan, laut, asdp, arteri, udara, stasiun & toll
  /// * [event] - The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\")
  /// * [search] - Search parameter for filtering
  /// * [type] - Type parameter for filtering domestik or internasional
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaOdModaRoutineGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaOdModaRoutineGet200Response>> modaOdModaSeasonalGet({ 
    required String moda,
    required String event,
    String? search,
    String? type,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/od/{moda}/seasonal'.replaceAll('{' r'moda' '}', encodeQueryParameter(_serializers, moda, const FullType(String)).toString());
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
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ModaOdModaRoutineGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaOdModaRoutineGet200Response),
      ) as ModaOdModaRoutineGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaOdModaRoutineGet200Response>(
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

  /// Get list of fleet operators
  /// 
  ///
  /// Parameters:
  /// * [moda] 
  /// * [idOperator] - Id of the operator
  /// * [page] - Page number for pagination
  /// * [limit] - Number of items per page
  /// * [search] - Filter by search term
  /// * [sortColumn] - Define column for sorting
  /// * [sortDirection] - Define direction for sorting (asc or desc)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaOperatorsModaFleetsGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaOperatorsModaFleetsGet200Response>> modaOperatorsModaFleetsGet({ 
    required String moda,
    required String idOperator,
    int? page = 1,
    int? limit = 10,
    String? search,
    String? sortColumn,
    String? sortDirection,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/operators/{moda}/fleets'.replaceAll('{' r'moda' '}', encodeQueryParameter(_serializers, moda, const FullType(String)).toString());
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
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      r'idOperator': encodeQueryParameter(_serializers, idOperator, const FullType(String)),
      if (sortColumn != null) r'sortColumn': encodeQueryParameter(_serializers, sortColumn, const FullType(String)),
      if (sortDirection != null) r'sortDirection': encodeQueryParameter(_serializers, sortDirection, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ModaOperatorsModaFleetsGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaOperatorsModaFleetsGet200Response),
      ) as ModaOperatorsModaFleetsGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaOperatorsModaFleetsGet200Response>(
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

  /// Get list of od operators
  /// 
  ///
  /// Parameters:
  /// * [moda] 
  /// * [idOperator] - Id of the operator
  /// * [page] - Page number for pagination
  /// * [limit] - Number of items per page
  /// * [search] - Filter by search term
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaOperatorsModaOdGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaOperatorsModaOdGet200Response>> modaOperatorsModaOdGet({ 
    required String moda,
    required String idOperator,
    int? page = 1,
    int? limit = 10,
    String? search,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/operators/{moda}/od'.replaceAll('{' r'moda' '}', encodeQueryParameter(_serializers, moda, const FullType(String)).toString());
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
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      r'idOperator': encodeQueryParameter(_serializers, idOperator, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ModaOperatorsModaOdGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaOperatorsModaOdGet200Response),
      ) as ModaOperatorsModaOdGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaOperatorsModaOdGet200Response>(
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

  /// Get list of transportation operators
  /// 
  ///
  /// Parameters:
  /// * [moda] 
  /// * [dateStart] - Start date for filtering data
  /// * [dateEnd] - End date for filtering data
  /// * [period] - Data aggregation period
  /// * [search] - Search term for filtering operators
  /// * [sortColumn] - Define column for sorting
  /// * [sortDirection] - Define direction for sorting (asc or desc)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>>> modaOperatorsModaRoutineGet({ 
    required String moda,
    Date? dateStart,
    Date? dateEnd,
    String? period,
    String? search,
    String? sortColumn,
    String? sortDirection,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/operators/{moda}/routine'.replaceAll('{' r'moda' '}', encodeQueryParameter(_serializers, moda, const FullType(String)).toString());
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
      if (dateStart != null) r'dateStart': encodeQueryParameter(_serializers, dateStart, const FullType(Date)),
      if (dateEnd != null) r'dateEnd': encodeQueryParameter(_serializers, dateEnd, const FullType(Date)),
      if (period != null) r'period': encodeQueryParameter(_serializers, period, const FullType(String)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (sortColumn != null) r'sortColumn': encodeQueryParameter(_serializers, sortColumn, const FullType(String)),
      if (sortDirection != null) r'sortDirection': encodeQueryParameter(_serializers, sortDirection, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(ModaOperatorsModaRoutineGet200ResponseInner)]),
      ) as BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>>(
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

  /// Get list of transportation operators
  /// 
  ///
  /// Parameters:
  /// * [moda] 
  /// * [event] - Data aggregation event
  /// * [search] - Search term for filtering operators
  /// * [sortColumn] - Define column for sorting
  /// * [sortDirection] - Define direction for sorting (asc or desc)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>>> modaOperatorsModaSeasonalGet({ 
    required String moda,
    String? event,
    String? search,
    String? sortColumn,
    String? sortDirection,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/operators/{moda}/seasonal'.replaceAll('{' r'moda' '}', encodeQueryParameter(_serializers, moda, const FullType(String)).toString());
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
      if (event != null) r'event': encodeQueryParameter(_serializers, event, const FullType(String)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (sortColumn != null) r'sortColumn': encodeQueryParameter(_serializers, sortColumn, const FullType(String)),
      if (sortDirection != null) r'sortDirection': encodeQueryParameter(_serializers, sortDirection, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(ModaOperatorsModaRoutineGet200ResponseInner)]),
      ) as BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>>(
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

  /// Get detail regional routine data for specified date range and id location
  /// 
  ///
  /// Parameters:
  /// * [idLocation] - Id location
  /// * [tanggalAwal1] - Start date for the data query (format YYYY-MM-DD)
  /// * [tanggalAkhir1] - End date for the data query (format YYYY-MM-DD)
  /// * [type] - Optional type parameter for filtering (domestik or internasional)
  /// * [moda] - Optional type parameter for determine which moda to use
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaRegionalIdLocationRoutineGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaRegionalIdLocationRoutineGet200Response>> modaRegionalIdLocationRoutineGet({ 
    required String idLocation,
    required Date tanggalAwal1,
    required Date tanggalAkhir1,
    String? type,
    String? moda,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/regional/{idLocation}/routine'.replaceAll('{' r'idLocation' '}', encodeQueryParameter(_serializers, idLocation, const FullType(String)).toString());
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
      r'tanggalAwal1': encodeQueryParameter(_serializers, tanggalAwal1, const FullType(Date)),
      r'tanggalAkhir1': encodeQueryParameter(_serializers, tanggalAkhir1, const FullType(Date)),
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
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

    ModaRegionalIdLocationRoutineGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaRegionalIdLocationRoutineGet200Response),
      ) as ModaRegionalIdLocationRoutineGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaRegionalIdLocationRoutineGet200Response>(
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

  /// Get detail seasonal regional data for specified event and id location
  /// 
  ///
  /// Parameters:
  /// * [idLocation] - Id location
  /// * [event] - The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\")
  /// * [type] - Optional type parameter for filtering (domestik or internasional)
  /// * [moda] - Optional type parameter for determine which moda to use
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaRegionalIdLocationRoutineGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaRegionalIdLocationRoutineGet200Response>> modaRegionalIdLocationSeasonalGet({ 
    required String idLocation,
    required String event,
    String? type,
    String? moda,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/regional/{idLocation}/seasonal'.replaceAll('{' r'idLocation' '}', encodeQueryParameter(_serializers, idLocation, const FullType(String)).toString());
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
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
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

    ModaRegionalIdLocationRoutineGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaRegionalIdLocationRoutineGet200Response),
      ) as ModaRegionalIdLocationRoutineGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaRegionalIdLocationRoutineGet200Response>(
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

  /// Get regional routine data for specified date range and province
  /// 
  ///
  /// Parameters:
  /// * [tanggalAwal1] - Start date for the data query (format YYYY-MM-DD)
  /// * [tanggalAkhir1] - End date for the data query (format YYYY-MM-DD)
  /// * [provinsi] - Province name to filter the data
  /// * [type] - Optional type parameter for filtering (domestik or internasional)
  /// * [moda] - Optional type parameter for determine which moda to use
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaRegionalRoutineGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaRegionalRoutineGet200Response>> modaRegionalRoutineGet({ 
    required Date tanggalAwal1,
    required Date tanggalAkhir1,
    required String provinsi,
    String? type,
    String? moda,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/regional/routine';
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
      r'tanggalAwal1': encodeQueryParameter(_serializers, tanggalAwal1, const FullType(Date)),
      r'tanggalAkhir1': encodeQueryParameter(_serializers, tanggalAkhir1, const FullType(Date)),
      r'provinsi': encodeQueryParameter(_serializers, provinsi, const FullType(String)),
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
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

    ModaRegionalRoutineGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaRegionalRoutineGet200Response),
      ) as ModaRegionalRoutineGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaRegionalRoutineGet200Response>(
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

  /// Get seasonal regional data for specified event and province
  /// 
  ///
  /// Parameters:
  /// * [event] - The seasonal event id to query data for (e.g., \"Christmas\", \"New Year\", \"Eid\")
  /// * [provinsi] - Province name to filter the data
  /// * [type] - Optional type parameter for filtering (domestik or internasional)
  /// * [moda] - Optional type parameter for determine which moda to use
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ModaRegionalRoutineGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ModaRegionalRoutineGet200Response>> modaRegionalSeasonalGet({ 
    required String event,
    required String provinsi,
    String? type,
    String? moda,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/moda/regional/seasonal';
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
      r'provinsi': encodeQueryParameter(_serializers, provinsi, const FullType(String)),
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
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

    ModaRegionalRoutineGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ModaRegionalRoutineGet200Response),
      ) as ModaRegionalRoutineGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ModaRegionalRoutineGet200Response>(
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
