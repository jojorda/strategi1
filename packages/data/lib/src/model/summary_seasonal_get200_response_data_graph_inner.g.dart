// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_seasonal_get200_response_data_graph_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummarySeasonalGet200ResponseDataGraphInner
    extends SummarySeasonalGet200ResponseDataGraphInner {
  @override
  final String? name;
  @override
  final int? count;

  factory _$SummarySeasonalGet200ResponseDataGraphInner(
          [void Function(SummarySeasonalGet200ResponseDataGraphInnerBuilder)?
              updates]) =>
      (new SummarySeasonalGet200ResponseDataGraphInnerBuilder()
            ..update(updates))
          ._build();

  _$SummarySeasonalGet200ResponseDataGraphInner._({this.name, this.count})
      : super._();

  @override
  SummarySeasonalGet200ResponseDataGraphInner rebuild(
          void Function(SummarySeasonalGet200ResponseDataGraphInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummarySeasonalGet200ResponseDataGraphInnerBuilder toBuilder() =>
      new SummarySeasonalGet200ResponseDataGraphInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummarySeasonalGet200ResponseDataGraphInner &&
        name == other.name &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SummarySeasonalGet200ResponseDataGraphInner')
          ..add('name', name)
          ..add('count', count))
        .toString();
  }
}

class SummarySeasonalGet200ResponseDataGraphInnerBuilder
    implements
        Builder<SummarySeasonalGet200ResponseDataGraphInner,
            SummarySeasonalGet200ResponseDataGraphInnerBuilder> {
  _$SummarySeasonalGet200ResponseDataGraphInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  SummarySeasonalGet200ResponseDataGraphInnerBuilder() {
    SummarySeasonalGet200ResponseDataGraphInner._defaults(this);
  }

  SummarySeasonalGet200ResponseDataGraphInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummarySeasonalGet200ResponseDataGraphInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummarySeasonalGet200ResponseDataGraphInner;
  }

  @override
  void update(
      void Function(SummarySeasonalGet200ResponseDataGraphInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SummarySeasonalGet200ResponseDataGraphInner build() => _build();

  _$SummarySeasonalGet200ResponseDataGraphInner _build() {
    final _$result = _$v ??
        new _$SummarySeasonalGet200ResponseDataGraphInner._(
          name: name,
          count: count,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
