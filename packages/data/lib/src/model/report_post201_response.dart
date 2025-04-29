//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/report.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_post201_response.g.dart';

/// ReportPost201Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class ReportPost201Response implements Built<ReportPost201Response, ReportPost201ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  Report? get data;

  ReportPost201Response._();

  factory ReportPost201Response([void updates(ReportPost201ResponseBuilder b)]) = _$ReportPost201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportPost201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportPost201Response> get serializer => _$ReportPost201ResponseSerializer();
}

class _$ReportPost201ResponseSerializer implements PrimitiveSerializer<ReportPost201Response> {
  @override
  final Iterable<Type> types = const [ReportPost201Response, _$ReportPost201Response];

  @override
  final String wireName = r'ReportPost201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportPost201Response object, {
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
        specifiedType: const FullType(Report),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportPost201ResponseBuilder result,
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
            specifiedType: const FullType(Report),
          ) as Report;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportPost201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportPost201ResponseBuilder();
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

