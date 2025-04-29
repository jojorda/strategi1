// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_seasonal_get200_response_data_network_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummarySeasonalGet200ResponseDataNetworkInner
    extends SummarySeasonalGet200ResponseDataNetworkInner {
  @override
  final String? type;
  @override
  final String? name;
  @override
  final int? count;
  @override
  final int? point;

  factory _$SummarySeasonalGet200ResponseDataNetworkInner(
          [void Function(SummarySeasonalGet200ResponseDataNetworkInnerBuilder)?
              updates]) =>
      (new SummarySeasonalGet200ResponseDataNetworkInnerBuilder()
            ..update(updates))
          ._build();

  _$SummarySeasonalGet200ResponseDataNetworkInner._(
      {this.type, this.name, this.count, this.point})
      : super._();

  @override
  SummarySeasonalGet200ResponseDataNetworkInner rebuild(
          void Function(SummarySeasonalGet200ResponseDataNetworkInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummarySeasonalGet200ResponseDataNetworkInnerBuilder toBuilder() =>
      new SummarySeasonalGet200ResponseDataNetworkInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummarySeasonalGet200ResponseDataNetworkInner &&
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
            r'SummarySeasonalGet200ResponseDataNetworkInner')
          ..add('type', type)
          ..add('name', name)
          ..add('count', count)
          ..add('point', point))
        .toString();
  }
}

class SummarySeasonalGet200ResponseDataNetworkInnerBuilder
    implements
        Builder<SummarySeasonalGet200ResponseDataNetworkInner,
            SummarySeasonalGet200ResponseDataNetworkInnerBuilder> {
  _$SummarySeasonalGet200ResponseDataNetworkInner? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _point;
  int? get point => _$this._point;
  set point(int? point) => _$this._point = point;

  SummarySeasonalGet200ResponseDataNetworkInnerBuilder() {
    SummarySeasonalGet200ResponseDataNetworkInner._defaults(this);
  }

  SummarySeasonalGet200ResponseDataNetworkInnerBuilder get _$this {
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
  void replace(SummarySeasonalGet200ResponseDataNetworkInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummarySeasonalGet200ResponseDataNetworkInner;
  }

  @override
  void update(
      void Function(SummarySeasonalGet200ResponseDataNetworkInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SummarySeasonalGet200ResponseDataNetworkInner build() => _build();

  _$SummarySeasonalGet200ResponseDataNetworkInner _build() {
    final _$result = _$v ??
        new _$SummarySeasonalGet200ResponseDataNetworkInner._(
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
