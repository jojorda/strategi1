//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/incident_report_get200_response_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_get200_response.g.dart';

/// IncidentReportGet200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [count] - Total number of items that match the filter criteria
/// * [page] - Current page number
/// * [limit] - Number of items per page
/// * [totalPages] - Total number of pages available
@BuiltValue()
abstract class IncidentReportGet200Response implements Built<IncidentReportGet200Response, IncidentReportGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  BuiltList<IncidentReportGet200ResponseDataInner>? get data;

  /// Total number of items that match the filter criteria
  @BuiltValueField(wireName: r'count')
  int? get count;

  /// Current page number
  @BuiltValueField(wireName: r'page')
  int? get page;

  /// Number of items per page
  @BuiltValueField(wireName: r'limit')
  int? get limit;

  /// Total number of pages available
  @BuiltValueField(wireName: r'totalPages')
  int? get totalPages;

  IncidentReportGet200Response._();

  factory IncidentReportGet200Response([void updates(IncidentReportGet200ResponseBuilder b)]) = _$IncidentReportGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportGet200Response> get serializer => _$IncidentReportGet200ResponseSerializer();
}

class _$IncidentReportGet200ResponseSerializer implements PrimitiveSerializer<IncidentReportGet200Response> {
  @override
  final Iterable<Type> types = const [IncidentReportGet200Response, _$IncidentReportGet200Response];

  @override
  final String wireName = r'IncidentReportGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(IncidentReportGet200ResponseDataInner)]),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalPages != null) {
      yield r'totalPages';
      yield serializers.serialize(
        object.totalPages,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IncidentReportGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IncidentReportGet200ResponseDataInner)]),
          ) as BuiltList<IncidentReportGet200ResponseDataInner>;
          result.data.replace(valueDes);
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        case r'totalPages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPages = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IncidentReportGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportGet200ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

