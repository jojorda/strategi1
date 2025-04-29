// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model30_seconds_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Model30SecondsGet200ResponseDataInnerStatusEnum
    _$model30SecondsGet200ResponseDataInnerStatusEnum_online =
    const Model30SecondsGet200ResponseDataInnerStatusEnum._('online');
const Model30SecondsGet200ResponseDataInnerStatusEnum
    _$model30SecondsGet200ResponseDataInnerStatusEnum_offline =
    const Model30SecondsGet200ResponseDataInnerStatusEnum._('offline');

Model30SecondsGet200ResponseDataInnerStatusEnum
    _$model30SecondsGet200ResponseDataInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'online':
      return _$model30SecondsGet200ResponseDataInnerStatusEnum_online;
    case 'offline':
      return _$model30SecondsGet200ResponseDataInnerStatusEnum_offline;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Model30SecondsGet200ResponseDataInnerStatusEnum>
    _$model30SecondsGet200ResponseDataInnerStatusEnumValues = new BuiltSet<
        Model30SecondsGet200ResponseDataInnerStatusEnum>(const <Model30SecondsGet200ResponseDataInnerStatusEnum>[
  _$model30SecondsGet200ResponseDataInnerStatusEnum_online,
  _$model30SecondsGet200ResponseDataInnerStatusEnum_offline,
]);

Serializer<Model30SecondsGet200ResponseDataInnerStatusEnum>
    _$model30SecondsGet200ResponseDataInnerStatusEnumSerializer =
    new _$Model30SecondsGet200ResponseDataInnerStatusEnumSerializer();

class _$Model30SecondsGet200ResponseDataInnerStatusEnumSerializer
    implements
        PrimitiveSerializer<Model30SecondsGet200ResponseDataInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'online': 'online',
    'offline': 'offline',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'online': 'online',
    'offline': 'offline',
  };

  @override
  final Iterable<Type> types = const <Type>[
    Model30SecondsGet200ResponseDataInnerStatusEnum
  ];
  @override
  final String wireName = 'Model30SecondsGet200ResponseDataInnerStatusEnum';

  @override
  Object serialize(Serializers serializers,
          Model30SecondsGet200ResponseDataInnerStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Model30SecondsGet200ResponseDataInnerStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Model30SecondsGet200ResponseDataInnerStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Model30SecondsGet200ResponseDataInner
    extends Model30SecondsGet200ResponseDataInner {
  @override
  final String? id;
  @override
  final String? namaLokasi;
  @override
  final String? namaCctv;
  @override
  final String? streamUrl;
  @override
  final Model30SecondsGet200ResponseDataInnerStatusEnum? status;

  factory _$Model30SecondsGet200ResponseDataInner(
          [void Function(Model30SecondsGet200ResponseDataInnerBuilder)?
              updates]) =>
      (new Model30SecondsGet200ResponseDataInnerBuilder()..update(updates))
          ._build();

  _$Model30SecondsGet200ResponseDataInner._(
      {this.id, this.namaLokasi, this.namaCctv, this.streamUrl, this.status})
      : super._();

  @override
  Model30SecondsGet200ResponseDataInner rebuild(
          void Function(Model30SecondsGet200ResponseDataInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Model30SecondsGet200ResponseDataInnerBuilder toBuilder() =>
      new Model30SecondsGet200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Model30SecondsGet200ResponseDataInner &&
        id == other.id &&
        namaLokasi == other.namaLokasi &&
        namaCctv == other.namaCctv &&
        streamUrl == other.streamUrl &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, namaLokasi.hashCode);
    _$hash = $jc(_$hash, namaCctv.hashCode);
    _$hash = $jc(_$hash, streamUrl.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Model30SecondsGet200ResponseDataInner')
          ..add('id', id)
          ..add('namaLokasi', namaLokasi)
          ..add('namaCctv', namaCctv)
          ..add('streamUrl', streamUrl)
          ..add('status', status))
        .toString();
  }
}

class Model30SecondsGet200ResponseDataInnerBuilder
    implements
        Builder<Model30SecondsGet200ResponseDataInner,
            Model30SecondsGet200ResponseDataInnerBuilder> {
  _$Model30SecondsGet200ResponseDataInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _namaLokasi;
  String? get namaLokasi => _$this._namaLokasi;
  set namaLokasi(String? namaLokasi) => _$this._namaLokasi = namaLokasi;

  String? _namaCctv;
  String? get namaCctv => _$this._namaCctv;
  set namaCctv(String? namaCctv) => _$this._namaCctv = namaCctv;

  String? _streamUrl;
  String? get streamUrl => _$this._streamUrl;
  set streamUrl(String? streamUrl) => _$this._streamUrl = streamUrl;

  Model30SecondsGet200ResponseDataInnerStatusEnum? _status;
  Model30SecondsGet200ResponseDataInnerStatusEnum? get status => _$this._status;
  set status(Model30SecondsGet200ResponseDataInnerStatusEnum? status) =>
      _$this._status = status;

  Model30SecondsGet200ResponseDataInnerBuilder() {
    Model30SecondsGet200ResponseDataInner._defaults(this);
  }

  Model30SecondsGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _namaLokasi = $v.namaLokasi;
      _namaCctv = $v.namaCctv;
      _streamUrl = $v.streamUrl;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Model30SecondsGet200ResponseDataInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Model30SecondsGet200ResponseDataInner;
  }

  @override
  void update(
      void Function(Model30SecondsGet200ResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Model30SecondsGet200ResponseDataInner build() => _build();

  _$Model30SecondsGet200ResponseDataInner _build() {
    final _$result = _$v ??
        new _$Model30SecondsGet200ResponseDataInner._(
          id: id,
          namaLokasi: namaLokasi,
          namaCctv: namaCctv,
          streamUrl: streamUrl,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
