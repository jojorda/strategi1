// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_routine_get200_response_data_vehicle_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummaryRoutineGet200ResponseDataVehicleInner
    extends SummaryRoutineGet200ResponseDataVehicleInner {
  @override
  final String? type;
  @override
  final String? name;
  @override
  final num? count;
  @override
  final num? percent;

  factory _$SummaryRoutineGet200ResponseDataVehicleInner(
          [void Function(SummaryRoutineGet200ResponseDataVehicleInnerBuilder)?
              updates]) =>
      (new SummaryRoutineGet200ResponseDataVehicleInnerBuilder()
            ..update(updates))
          ._build();

  _$SummaryRoutineGet200ResponseDataVehicleInner._(
      {this.type, this.name, this.count, this.percent})
      : super._();

  @override
  SummaryRoutineGet200ResponseDataVehicleInner rebuild(
          void Function(SummaryRoutineGet200ResponseDataVehicleInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryRoutineGet200ResponseDataVehicleInnerBuilder toBuilder() =>
      new SummaryRoutineGet200ResponseDataVehicleInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummaryRoutineGet200ResponseDataVehicleInner &&
        type == other.type &&
        name == other.name &&
        count == other.count &&
        percent == other.percent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, percent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SummaryRoutineGet200ResponseDataVehicleInner')
          ..add('type', type)
          ..add('name', name)
          ..add('count', count)
          ..add('percent', percent))
        .toString();
  }
}

class SummaryRoutineGet200ResponseDataVehicleInnerBuilder
    implements
        Builder<SummaryRoutineGet200ResponseDataVehicleInner,
            SummaryRoutineGet200ResponseDataVehicleInnerBuilder> {
  _$SummaryRoutineGet200ResponseDataVehicleInner? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  num? _count;
  num? get count => _$this._count;
  set count(num? count) => _$this._count = count;

  num? _percent;
  num? get percent => _$this._percent;
  set percent(num? percent) => _$this._percent = percent;

  SummaryRoutineGet200ResponseDataVehicleInnerBuilder() {
    SummaryRoutineGet200ResponseDataVehicleInner._defaults(this);
  }

  SummaryRoutineGet200ResponseDataVehicleInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _name = $v.name;
      _count = $v.count;
      _percent = $v.percent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummaryRoutineGet200ResponseDataVehicleInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummaryRoutineGet200ResponseDataVehicleInner;
  }

  @override
  void update(
      void Function(SummaryRoutineGet200ResponseDataVehicleInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SummaryRoutineGet200ResponseDataVehicleInner build() => _build();

  _$SummaryRoutineGet200ResponseDataVehicleInner _build() {
    final _$result = _$v ??
        new _$SummaryRoutineGet200ResponseDataVehicleInner._(
          type: type,
          name: name,
          count: count,
          percent: percent,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
