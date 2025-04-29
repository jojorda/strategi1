// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_routine_get200_response_data_graph_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummaryRoutineGet200ResponseDataGraphInner
    extends SummaryRoutineGet200ResponseDataGraphInner {
  @override
  final String? name;
  @override
  final num? count;

  factory _$SummaryRoutineGet200ResponseDataGraphInner(
          [void Function(SummaryRoutineGet200ResponseDataGraphInnerBuilder)?
              updates]) =>
      (new SummaryRoutineGet200ResponseDataGraphInnerBuilder()..update(updates))
          ._build();

  _$SummaryRoutineGet200ResponseDataGraphInner._({this.name, this.count})
      : super._();

  @override
  SummaryRoutineGet200ResponseDataGraphInner rebuild(
          void Function(SummaryRoutineGet200ResponseDataGraphInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryRoutineGet200ResponseDataGraphInnerBuilder toBuilder() =>
      new SummaryRoutineGet200ResponseDataGraphInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummaryRoutineGet200ResponseDataGraphInner &&
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
            r'SummaryRoutineGet200ResponseDataGraphInner')
          ..add('name', name)
          ..add('count', count))
        .toString();
  }
}

class SummaryRoutineGet200ResponseDataGraphInnerBuilder
    implements
        Builder<SummaryRoutineGet200ResponseDataGraphInner,
            SummaryRoutineGet200ResponseDataGraphInnerBuilder> {
  _$SummaryRoutineGet200ResponseDataGraphInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  num? _count;
  num? get count => _$this._count;
  set count(num? count) => _$this._count = count;

  SummaryRoutineGet200ResponseDataGraphInnerBuilder() {
    SummaryRoutineGet200ResponseDataGraphInner._defaults(this);
  }

  SummaryRoutineGet200ResponseDataGraphInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummaryRoutineGet200ResponseDataGraphInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummaryRoutineGet200ResponseDataGraphInner;
  }

  @override
  void update(
      void Function(SummaryRoutineGet200ResponseDataGraphInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SummaryRoutineGet200ResponseDataGraphInner build() => _build();

  _$SummaryRoutineGet200ResponseDataGraphInner _build() {
    final _$result = _$v ??
        new _$SummaryRoutineGet200ResponseDataGraphInner._(
          name: name,
          count: count,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
