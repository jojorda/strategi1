//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:strategi_mobile_api/src/api_util.dart';
import 'package:strategi_mobile_api/src/model/cuaca.dart';
import 'package:strategi_mobile_api/src/model/date.dart';
import 'package:strategi_mobile_api/src/model/kecelakaan.dart';
import 'package:strategi_mobile_api/src/model/report_get200_response.dart';
import 'package:strategi_mobile_api/src/model/report_id_approve_post200_response.dart';
import 'package:strategi_mobile_api/src/model/report_id_approve_post500_response.dart';
import 'package:strategi_mobile_api/src/model/report_id_approve_post_request.dart';
import 'package:strategi_mobile_api/src/model/report_id_laporan_pantau_cuaca_get200_response.dart';
import 'package:strategi_mobile_api/src/model/report_id_laporan_pantau_cuaca_post201_response.dart';
import 'package:strategi_mobile_api/src/model/report_id_laporan_pantau_kecelakaan_get200_response.dart';
import 'package:strategi_mobile_api/src/model/report_id_laporan_pantau_kecelakaan_post201_response.dart';
import 'package:strategi_mobile_api/src/model/report_id_reject_post200_response.dart';
import 'package:strategi_mobile_api/src/model/report_id_reject_post500_response.dart';
import 'package:strategi_mobile_api/src/model/report_id_reject_post_request.dart';
import 'package:strategi_mobile_api/src/model/report_post201_response.dart';

class ReportApi {

  final Dio _dio;

  final Serializers _serializers;

  const ReportApi(this._dio, this._serializers);

  /// Get all reports need to approve
  /// Retrieves a list of all reports with optional filtering
  ///
  /// Parameters:
  /// * [type] - Filter by type
  /// * [search] - Filter by typed keyword
  /// * [poskoTerpadu] - Filter by integrated post
  /// * [event] - Filter by event
  /// * [dateFrom] - Filter by date range (start)
  /// * [dateTo] - Filter by date range (end)
  /// * [isApproved] - Filter status approved (true/false)
  /// * [page] - Page number for pagination
  /// * [limit] - Number of items per page
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReportGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReportGet200Response>> reportApprovalGet({ 
    String? type,
    String? search,
    String? poskoTerpadu,
    String? event,
    Date? dateFrom,
    Date? dateTo,
    String? isApproved,
    int? page = 1,
    int? limit = 10,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report/approval';
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
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (poskoTerpadu != null) r'poskoTerpadu': encodeQueryParameter(_serializers, poskoTerpadu, const FullType(String)),
      if (event != null) r'event': encodeQueryParameter(_serializers, event, const FullType(String)),
      if (dateFrom != null) r'dateFrom': encodeQueryParameter(_serializers, dateFrom, const FullType(Date)),
      if (dateTo != null) r'dateTo': encodeQueryParameter(_serializers, dateTo, const FullType(Date)),
      if (isApproved != null) r'isApproved': encodeQueryParameter(_serializers, isApproved, const FullType(String)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReportGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReportGet200Response),
      ) as ReportGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReportGet200Response>(
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

  /// Get all reports
  /// Retrieves a list of all reports with optional filtering
  ///
  /// Parameters:
  /// * [type] - Filter by type
  /// * [search] - Filter by typed keyword
  /// * [poskoTerpadu] - Filter by integrated post
  /// * [event] - Filter by event
  /// * [dateFrom] - Filter by date range (start)
  /// * [dateTo] - Filter by date range (end)
  /// * [isApproved] - Filter status approved (true/false)
  /// * [page] - Page number for pagination
  /// * [limit] - Number of items per page
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReportGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReportGet200Response>> reportGet({ 
    String? type,
    String? search,
    String? poskoTerpadu,
    String? event,
    Date? dateFrom,
    Date? dateTo,
    String? isApproved,
    int? page = 1,
    int? limit = 10,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report';
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
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (poskoTerpadu != null) r'poskoTerpadu': encodeQueryParameter(_serializers, poskoTerpadu, const FullType(String)),
      if (event != null) r'event': encodeQueryParameter(_serializers, event, const FullType(String)),
      if (dateFrom != null) r'dateFrom': encodeQueryParameter(_serializers, dateFrom, const FullType(Date)),
      if (dateTo != null) r'dateTo': encodeQueryParameter(_serializers, dateTo, const FullType(Date)),
      if (isApproved != null) r'isApproved': encodeQueryParameter(_serializers, isApproved, const FullType(String)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReportGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReportGet200Response),
      ) as ReportGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReportGet200Response>(
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

  /// Approve an report
  /// 
  ///
  /// Parameters:
  /// * [id] - The ID of the report to approve
  /// * [reportIdApprovePostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReportIdApprovePost200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReportIdApprovePost200Response>> reportIdApprovePost({ 
    required String id,
    required ReportIdApprovePostRequest reportIdApprovePostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report/{id}/approve'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(ReportIdApprovePostRequest);
      _bodyData = _serializers.serialize(reportIdApprovePostRequest, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReportIdApprovePost200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReportIdApprovePost200Response),
      ) as ReportIdApprovePost200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReportIdApprovePost200Response>(
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

  /// Delete a report
  /// Deletes a specific report by its ID
  ///
  /// Parameters:
  /// * [id] - ID of the report to delete
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> reportIdDelete({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
    final _options = Options(
      method: r'DELETE',
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Get report by ID
  /// Retrieves a specific report by its ID
  ///
  /// Parameters:
  /// * [id] - ID of the report to retrieve
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReportPost201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReportPost201Response>> reportIdGet({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReportPost201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReportPost201Response),
      ) as ReportPost201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReportPost201Response>(
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

  /// Get weather information for a report
  /// Retrieves weather information associated with a specific report
  ///
  /// Parameters:
  /// * [idLaporanPantau] - ID of the report to get weather information for
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReportIdLaporanPantauCuacaGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReportIdLaporanPantauCuacaGet200Response>> reportIdLaporanPantauCuacaGet({ 
    required int idLaporanPantau,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report/{idLaporanPantau}/cuaca'.replaceAll('{' r'idLaporanPantau' '}', encodeQueryParameter(_serializers, idLaporanPantau, const FullType(int)).toString());
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReportIdLaporanPantauCuacaGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReportIdLaporanPantauCuacaGet200Response),
      ) as ReportIdLaporanPantauCuacaGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReportIdLaporanPantauCuacaGet200Response>(
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

  /// Create weather information
  /// Creates weather information associated with an existing report
  ///
  /// Parameters:
  /// * [idLaporanPantau] - ID of the report to associate with this weather information
  /// * [cuaca] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReportIdLaporanPantauCuacaPost201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReportIdLaporanPantauCuacaPost201Response>> reportIdLaporanPantauCuacaPost({ 
    required int idLaporanPantau,
    required Cuaca cuaca,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report/{idLaporanPantau}/cuaca'.replaceAll('{' r'idLaporanPantau' '}', encodeQueryParameter(_serializers, idLaporanPantau, const FullType(int)).toString());
    final _options = Options(
      method: r'POST',
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(Cuaca);
      _bodyData = _serializers.serialize(cuaca, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReportIdLaporanPantauCuacaPost201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReportIdLaporanPantauCuacaPost201Response),
      ) as ReportIdLaporanPantauCuacaPost201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReportIdLaporanPantauCuacaPost201Response>(
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

  /// Get all accident reports for a report
  /// Retrieves all accident reports associated with a specific report
  ///
  /// Parameters:
  /// * [idLaporanPantau] - ID of the report to get accident reports for
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReportIdLaporanPantauKecelakaanGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReportIdLaporanPantauKecelakaanGet200Response>> reportIdLaporanPantauKecelakaanGet({ 
    required int idLaporanPantau,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report/{idLaporanPantau}/kecelakaan'.replaceAll('{' r'idLaporanPantau' '}', encodeQueryParameter(_serializers, idLaporanPantau, const FullType(int)).toString());
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReportIdLaporanPantauKecelakaanGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReportIdLaporanPantauKecelakaanGet200Response),
      ) as ReportIdLaporanPantauKecelakaanGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReportIdLaporanPantauKecelakaanGet200Response>(
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

  /// Create or update a new accident report
  /// Creates or updates a new accident report associated with an existing report
  ///
  /// Parameters:
  /// * [idLaporanPantau] - ID of the report to associate with this accident report
  /// * [kecelakaan] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReportIdLaporanPantauKecelakaanPost201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReportIdLaporanPantauKecelakaanPost201Response>> reportIdLaporanPantauKecelakaanPost({ 
    required int idLaporanPantau,
    required Kecelakaan kecelakaan,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report/{idLaporanPantau}/kecelakaan'.replaceAll('{' r'idLaporanPantau' '}', encodeQueryParameter(_serializers, idLaporanPantau, const FullType(int)).toString());
    final _options = Options(
      method: r'POST',
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(Kecelakaan);
      _bodyData = _serializers.serialize(kecelakaan, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReportIdLaporanPantauKecelakaanPost201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReportIdLaporanPantauKecelakaanPost201Response),
      ) as ReportIdLaporanPantauKecelakaanPost201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReportIdLaporanPantauKecelakaanPost201Response>(
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

  /// Update a report
  /// Updates an existing report with new information
  ///
  /// Parameters:
  /// * [id] - ID of the report to update
  /// * [type] 
  /// * [matra] 
  /// * [event] 
  /// * [nama] 
  /// * [personil] 
  /// * [pengikut] - Comma separated (,)
  /// * [tanggal] 
  /// * [provinsi] 
  /// * [kabupaten] 
  /// * [angkutan] 
  /// * [unitPelayanan] 
  /// * [deskripsi] 
  /// * [isKejadianMenonjol] 
  /// * [kejadianMenonjol] 
  /// * [koordinatKejadianMenonjol] 
  /// * [isKecelakaan] 
  /// * [kecelakaan] 
  /// * [koordinatKecelakaan] 
  /// * [lokasiKecelakaan] 
  /// * [pembuat] 
  /// * [persetujuan] 
  /// * [file] 
  /// * [photo] 
  /// * [captionPhoto] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReportPost201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReportPost201Response>> reportIdPut({ 
    required int id,
    String? type,
    String? matra,
    String? event,
    String? nama,
    String? personil,
    String? pengikut,
    Date? tanggal,
    String? provinsi,
    String? kabupaten,
    String? angkutan,
    String? unitPelayanan,
    String? deskripsi,
    bool? isKejadianMenonjol,
    String? kejadianMenonjol,
    String? koordinatKejadianMenonjol,
    bool? isKecelakaan,
    String? kecelakaan,
    String? koordinatKecelakaan,
    String? lokasiKecelakaan,
    String? pembuat,
    String? persetujuan,
    MultipartFile? file,
    MultipartFile? photo,
    String? captionPhoto,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
    final _options = Options(
      method: r'PUT',
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
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        if (type != null) r'type': encodeFormParameter(_serializers, type, const FullType(String)),
        if (matra != null) r'matra': encodeFormParameter(_serializers, matra, const FullType(String)),
        if (event != null) r'event': encodeFormParameter(_serializers, event, const FullType(String)),
        if (nama != null) r'nama': encodeFormParameter(_serializers, nama, const FullType(String)),
        if (personil != null) r'personil': encodeFormParameter(_serializers, personil, const FullType(String)),
        if (pengikut != null) r'pengikut': encodeFormParameter(_serializers, pengikut, const FullType(String)),
        if (tanggal != null) r'tanggal': encodeFormParameter(_serializers, tanggal, const FullType(Date)),
        if (provinsi != null) r'provinsi': encodeFormParameter(_serializers, provinsi, const FullType(String)),
        if (kabupaten != null) r'kabupaten': encodeFormParameter(_serializers, kabupaten, const FullType(String)),
        if (angkutan != null) r'angkutan': encodeFormParameter(_serializers, angkutan, const FullType(String)),
        if (unitPelayanan != null) r'unitPelayanan': encodeFormParameter(_serializers, unitPelayanan, const FullType(String)),
        if (deskripsi != null) r'deskripsi': encodeFormParameter(_serializers, deskripsi, const FullType(String)),
        if (isKejadianMenonjol != null) r'isKejadianMenonjol': encodeFormParameter(_serializers, isKejadianMenonjol, const FullType(bool)),
        if (kejadianMenonjol != null) r'kejadianMenonjol': encodeFormParameter(_serializers, kejadianMenonjol, const FullType(String)),
        if (koordinatKejadianMenonjol != null) r'koordinatKejadianMenonjol': encodeFormParameter(_serializers, koordinatKejadianMenonjol, const FullType(String)),
        if (isKecelakaan != null) r'isKecelakaan': encodeFormParameter(_serializers, isKecelakaan, const FullType(bool)),
        if (kecelakaan != null) r'kecelakaan': encodeFormParameter(_serializers, kecelakaan, const FullType(String)),
        if (koordinatKecelakaan != null) r'koordinatKecelakaan': encodeFormParameter(_serializers, koordinatKecelakaan, const FullType(String)),
        if (lokasiKecelakaan != null) r'lokasiKecelakaan': encodeFormParameter(_serializers, lokasiKecelakaan, const FullType(String)),
        if (pembuat != null) r'pembuat': encodeFormParameter(_serializers, pembuat, const FullType(String)),
        if (persetujuan != null) r'persetujuan': encodeFormParameter(_serializers, persetujuan, const FullType(String)),
        if (file != null) r'file': file,
        if (photo != null) r'photo': photo,
        if (captionPhoto != null) r'captionPhoto': encodeFormParameter(_serializers, captionPhoto, const FullType(String)),
      });

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReportPost201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReportPost201Response),
      ) as ReportPost201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReportPost201Response>(
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

  /// Reject an report
  /// 
  ///
  /// Parameters:
  /// * [id] - The ID of the report to reject
  /// * [reportIdRejectPostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReportIdRejectPost200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReportIdRejectPost200Response>> reportIdRejectPost({ 
    required String id,
    required ReportIdRejectPostRequest reportIdRejectPostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report/{id}/reject'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(ReportIdRejectPostRequest);
      _bodyData = _serializers.serialize(reportIdRejectPostRequest, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReportIdRejectPost200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReportIdRejectPost200Response),
      ) as ReportIdRejectPost200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReportIdRejectPost200Response>(
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

  /// Create a new report
  /// Creates a new report with the provided information
  ///
  /// Parameters:
  /// * [type] 
  /// * [matra] 
  /// * [event] 
  /// * [nama] 
  /// * [personil] 
  /// * [pengikut] - Comma separated (,)
  /// * [tanggal] 
  /// * [provinsi] 
  /// * [kabupaten] 
  /// * [angkutan] 
  /// * [unitPelayanan] 
  /// * [deskripsi] 
  /// * [isKejadianMenonjol] 
  /// * [kejadianMenonjol] 
  /// * [koordinatKejadianMenonjol] 
  /// * [isKecelakaan] 
  /// * [kecelakaan] 
  /// * [koordinatKecelakaan] 
  /// * [lokasiKecelakaan] 
  /// * [pembuat] 
  /// * [persetujuan] 
  /// * [file] 
  /// * [photo] 
  /// * [captionPhoto] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReportPost201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReportPost201Response>> reportPost({ 
    String? type,
    String? matra,
    String? event,
    String? nama,
    String? personil,
    String? pengikut,
    Date? tanggal,
    String? provinsi,
    String? kabupaten,
    String? angkutan,
    String? unitPelayanan,
    String? deskripsi,
    bool? isKejadianMenonjol,
    String? kejadianMenonjol,
    String? koordinatKejadianMenonjol,
    bool? isKecelakaan,
    String? kecelakaan,
    String? koordinatKecelakaan,
    String? lokasiKecelakaan,
    String? pembuat,
    String? persetujuan,
    MultipartFile? file,
    MultipartFile? photo,
    String? captionPhoto,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/report';
    final _options = Options(
      method: r'POST',
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
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        if (type != null) r'type': encodeFormParameter(_serializers, type, const FullType(String)),
        if (matra != null) r'matra': encodeFormParameter(_serializers, matra, const FullType(String)),
        if (event != null) r'event': encodeFormParameter(_serializers, event, const FullType(String)),
        if (nama != null) r'nama': encodeFormParameter(_serializers, nama, const FullType(String)),
        if (personil != null) r'personil': encodeFormParameter(_serializers, personil, const FullType(String)),
        if (pengikut != null) r'pengikut': encodeFormParameter(_serializers, pengikut, const FullType(String)),
        if (tanggal != null) r'tanggal': encodeFormParameter(_serializers, tanggal, const FullType(Date)),
        if (provinsi != null) r'provinsi': encodeFormParameter(_serializers, provinsi, const FullType(String)),
        if (kabupaten != null) r'kabupaten': encodeFormParameter(_serializers, kabupaten, const FullType(String)),
        if (angkutan != null) r'angkutan': encodeFormParameter(_serializers, angkutan, const FullType(String)),
        if (unitPelayanan != null) r'unitPelayanan': encodeFormParameter(_serializers, unitPelayanan, const FullType(String)),
        if (deskripsi != null) r'deskripsi': encodeFormParameter(_serializers, deskripsi, const FullType(String)),
        if (isKejadianMenonjol != null) r'isKejadianMenonjol': encodeFormParameter(_serializers, isKejadianMenonjol, const FullType(bool)),
        if (kejadianMenonjol != null) r'kejadianMenonjol': encodeFormParameter(_serializers, kejadianMenonjol, const FullType(String)),
        if (koordinatKejadianMenonjol != null) r'koordinatKejadianMenonjol': encodeFormParameter(_serializers, koordinatKejadianMenonjol, const FullType(String)),
        if (isKecelakaan != null) r'isKecelakaan': encodeFormParameter(_serializers, isKecelakaan, const FullType(bool)),
        if (kecelakaan != null) r'kecelakaan': encodeFormParameter(_serializers, kecelakaan, const FullType(String)),
        if (koordinatKecelakaan != null) r'koordinatKecelakaan': encodeFormParameter(_serializers, koordinatKecelakaan, const FullType(String)),
        if (lokasiKecelakaan != null) r'lokasiKecelakaan': encodeFormParameter(_serializers, lokasiKecelakaan, const FullType(String)),
        if (pembuat != null) r'pembuat': encodeFormParameter(_serializers, pembuat, const FullType(String)),
        if (persetujuan != null) r'persetujuan': encodeFormParameter(_serializers, persetujuan, const FullType(String)),
        if (file != null) r'file': file,
        if (photo != null) r'photo': photo,
        if (captionPhoto != null) r'captionPhoto': encodeFormParameter(_serializers, captionPhoto, const FullType(String)),
      });

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReportPost201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ReportPost201Response),
      ) as ReportPost201Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReportPost201Response>(
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
