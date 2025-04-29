// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_routine_get200_response_data_network_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummaryRoutineGet200ResponseDataNetworkInner
    extends SummaryRoutineGet200ResponseDataNetworkInner {
  @override
  final String? type;
  @override
  final String? name;
  @override
  final num? count;
  @override
  final num? point;

  factory _$SummaryRoutineGet200ResponseDataNetworkInner(
          [void Function(SummaryRoutineGet200ResponseDataNetworkInnerBuilder)?
              updates]) =>
      (new SummaryRoutineGet200ResponseDataNetworkInnerBuilder()
            ..update(updates))
          ._build();

  _$SummaryRoutineGet200ResponseDataNetworkInner._(
      {this.type, this.name, this.count, this.point})
      : super._();

  @override
  SummaryRoutineGet200ResponseDataNetworkInner rebuild(
          void Function(SummaryRoutineGet200ResponseDataNetworkInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryRoutineGet200ResponseDataNetworkInnerBuilder toBuilder() =>
      new SummaryRoutineGet200ResponseDataNetworkInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummaryRoutineGet200ResponseDataNetworkInner &&
        type == other.type &&
        name == other.name &&
        count == other.count &&
        point == other.point;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, point.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SummaryRoutineGet200ResponseDataNetworkInner')
          ..add('type', type)
          ..add('name', name)
          ..add('count', count)
          ..add('point', point))
        .toString();
  }
}

class SummaryRoutineGet200ResponseDataNetworkInnerBuilder
    implements
        Builder<SummaryRoutineGet200ResponseDataNetworkInner,
            SummaryRoutineGet200ResponseDataNetworkInnerBuilder> {
  _$SummaryRoutineGet200ResponseDataNetworkInner? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  num? _count;
  num? get count => _$this._count;
  set count(num? count) => _$this._count = count;

  num? _point;
  num? get point => _$this._point;
  set point(num? point) => _$this._point = point;

  SummaryRoutineGet200ResponseDataNetworkInnerBuilder() {
    SummaryRoutineGet200ResponseDataNetworkInner._defaults(this);
  }

  SummaryRoutineGet200ResponseDataNetworkInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _name = $v.name;
      _count = $v.count;
      _point = $v.point;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummaryRoutineGet200ResponseDataNetworkInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummaryRoutineGet200ResponseDataNetworkInner;
  }

  @override
  void update(
      void Function(SummaryRoutineGet200ResponseDataNetworkInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SummaryRoutineGet200ResponseDataNetworkInner build() => _build();

  _$SummaryRoutineGet200ResponseDataNetworkInner _build() {
    final _$result = _$v ??
        new _$SummaryRoutineGet200ResponseDataNetworkInner._(
          type: type,
          name: name,
          count: count,
          point: point,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
