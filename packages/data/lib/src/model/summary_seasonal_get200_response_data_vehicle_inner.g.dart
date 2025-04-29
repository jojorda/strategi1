// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_seasonal_get200_response_data_vehicle_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummarySeasonalGet200ResponseDataVehicleInner
    extends SummarySeasonalGet200ResponseDataVehicleInner {
  @override
  final String? type;
  @override
  final String? name;
  @override
  final int? count;
  @override
  final double? percent;

  factory _$SummarySeasonalGet200ResponseDataVehicleInner(
          [void Function(SummarySeasonalGet200ResponseDataVehicleInnerBuilder)?
              updates]) =>
      (new SummarySeasonalGet200ResponseDataVehicleInnerBuilder()
            ..update(updates))
          ._build();

  _$SummarySeasonalGet200ResponseDataVehicleInner._(
      {this.type, this.name, this.count, this.percent})
      : super._();

  @override
  SummarySeasonalGet200ResponseDataVehicleInner rebuild(
          void Function(SummarySeasonalGet200ResponseDataVehicleInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummarySeasonalGet200ResponseDataVehicleInnerBuilder toBuilder() =>
      new SummarySeasonalGet200ResponseDataVehicleInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummarySeasonalGet200ResponseDataVehicleInner &&
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
            r'SummarySeasonalGet200ResponseDataVehicleInner')
          ..add('type', type)
          ..add('name', name)
          ..add('count', count)
          ..add('percent', percent))
        .toString();
  }
}

class SummarySeasonalGet200ResponseDataVehicleInnerBuilder
    implements
        Builder<SummarySeasonalGet200ResponseDataVehicleInner,
            SummarySeasonalGet200ResponseDataVehicleInnerBuilder> {
  _$SummarySeasonalGet200ResponseDataVehicleInner? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _percent;
  double? get percent => _$this._percent;
  set percent(double? percent) => _$this._percent = percent;

  SummarySeasonalGet200ResponseDataVehicleInnerBuilder() {
    SummarySeasonalGet200ResponseDataVehicleInner._defaults(this);
  }

  SummarySeasonalGet200ResponseDataVehicleInnerBuilder get _$this {
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
  void replace(SummarySeasonalGet200ResponseDataVehicleInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummarySeasonalGet200ResponseDataVehicleInner;
  }

  @override
  void update(
      void Function(SummarySeasonalGet200ResponseDataVehicleInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SummarySeasonalGet200ResponseDataVehicleInner build() => _build();

  _$SummarySeasonalGet200ResponseDataVehicleInner _build() {
    final _$result = _$v ??
        new _$SummarySeasonalGet200ResponseDataVehicleInner._(
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
