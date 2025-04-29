//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:strategi_mobile_api/src/serializers.dart';
import 'package:strategi_mobile_api/src/auth/api_key_auth.dart';
import 'package:strategi_mobile_api/src/auth/basic_auth.dart';
import 'package:strategi_mobile_api/src/auth/bearer_auth.dart';
import 'package:strategi_mobile_api/src/auth/oauth.dart';
import 'package:strategi_mobile_api/src/api/auth_api.dart';
import 'package:strategi_mobile_api/src/api/cctv_api.dart';
import 'package:strategi_mobile_api/src/api/class30_seconds_api.dart';
import 'package:strategi_mobile_api/src/api/comparison_api.dart';
import 'package:strategi_mobile_api/src/api/coverage_api.dart';
import 'package:strategi_mobile_api/src/api/focus_api.dart';
import 'package:strategi_mobile_api/src/api/health_api.dart';
import 'package:strategi_mobile_api/src/api/incident_report_api.dart';
import 'package:strategi_mobile_api/src/api/master_data_api.dart';
import 'package:strategi_mobile_api/src/api/moda_api.dart';
import 'package:strategi_mobile_api/src/api/news_api.dart';
import 'package:strategi_mobile_api/src/api/performance_report_api.dart';
import 'package:strategi_mobile_api/src/api/posko_api.dart';
import 'package:strategi_mobile_api/src/api/report_api.dart';
import 'package:strategi_mobile_api/src/api/summary_api.dart';

class StrategiMobileApi {
  static const String basePath = r'http://localhost:3003';

  final Dio dio;
  final Serializers serializers;

  StrategiMobileApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio, serializers);
  }

  /// Get CCTVApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CCTVApi getCCTVApi() {
    return CCTVApi(dio, serializers);
  }

  /// Get Class30SecondsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  Class30SecondsApi getClass30SecondsApi() {
    return Class30SecondsApi(dio, serializers);
  }

  /// Get ComparisonApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ComparisonApi getComparisonApi() {
    return ComparisonApi(dio, serializers);
  }

  /// Get CoverageApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CoverageApi getCoverageApi() {
    return CoverageApi(dio, serializers);
  }

  /// Get FocusApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FocusApi getFocusApi() {
    return FocusApi(dio, serializers);
  }

  /// Get HealthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HealthApi getHealthApi() {
    return HealthApi(dio, serializers);
  }

  /// Get IncidentReportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IncidentReportApi getIncidentReportApi() {
    return IncidentReportApi(dio, serializers);
  }

  /// Get MasterDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MasterDataApi getMasterDataApi() {
    return MasterDataApi(dio, serializers);
  }

  /// Get ModaApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ModaApi getModaApi() {
    return ModaApi(dio, serializers);
  }

  /// Get NewsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NewsApi getNewsApi() {
    return NewsApi(dio, serializers);
  }

  /// Get PerformanceReportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PerformanceReportApi getPerformanceReportApi() {
    return PerformanceReportApi(dio, serializers);
  }

  /// Get PoskoApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PoskoApi getPoskoApi() {
    return PoskoApi(dio, serializers);
  }

  /// Get ReportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReportApi getReportApi() {
    return ReportApi(dio, serializers);
  }

  /// Get SummaryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SummaryApi getSummaryApi() {
    return SummaryApi(dio, serializers);
  }
}
