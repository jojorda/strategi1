// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_regional_routine_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaRegionalRoutineGet200ResponseData
    extends ModaRegionalRoutineGet200ResponseData {
  @override
  final ModaRegionalRoutineGet200ResponseDataGraph? graph;
  @override
  final BuiltList<ModaRegionalRoutineGet200ResponseDataListInner>? list;

  factory _$ModaRegionalRoutineGet200ResponseData(
          [void Function(ModaRegionalRoutineGet200ResponseDataBuilder)?
              updates]) =>
      (new ModaRegionalRoutineGet200ResponseDataBuilder()..update(updates))
          ._build();

  _$ModaRegionalRoutineGet200ResponseData._({this.graph, this.list})
      : super._();

  @override
  ModaRegionalRoutineGet200ResponseData rebuild(
          void Function(ModaRegionalRoutineGet200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaRegionalRoutineGet200ResponseDataBuilder toBuilder() =>
      new ModaRegionalRoutineGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaRegionalRoutineGet200ResponseData &&
        graph == other.graph &&
        list == other.list;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, graph.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaRegionalRoutineGet200ResponseData')
          ..add('graph', graph)
          ..add('list', list))
        .toString();
  }
}

class ModaRegionalRoutineGet200ResponseDataBuilder
    implements
        Builder<ModaRegionalRoutineGet200ResponseData,
            ModaRegionalRoutineGet200ResponseDataBuilder> {
  _$ModaRegionalRoutineGet200ResponseData? _$v;

  ModaRegionalRoutineGet200ResponseDataGraphBuilder? _graph;
  ModaRegionalRoutineGet200ResponseDataGraphBuilder get graph =>
      _$this._graph ??= new ModaRegionalRoutineGet200ResponseDataGraphBuilder();
  set graph(ModaRegionalRoutineGet200ResponseDataGraphBuilder? graph) =>
      _$this._graph = graph;

  ListBuilder<ModaRegionalRoutineGet200ResponseDataListInner>? _list;
  ListBuilder<ModaRegionalRoutineGet200ResponseDataListInner> get list =>
      _$this._list ??=
          new ListBuilder<ModaRegionalRoutineGet200ResponseDataListInner>();
  set list(ListBuilder<ModaRegionalRoutineGet200ResponseDataListInner>? list) =>
      _$this._list = list;

  ModaRegionalRoutineGet200ResponseDataBuilder() {
    ModaRegionalRoutineGet200ResponseData._defaults(this);
  }

  ModaRegionalRoutineGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _graph = $v.graph?.toBuilder();
      _list = $v.list?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaRegionalRoutineGet200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaRegionalRoutineGet200ResponseData;
  }

  @override
  void update(
      void Function(ModaRegionalRoutineGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaRegionalRoutineGet200ResponseData build() => _build();

  _$ModaRegionalRoutineGet200ResponseData _build() {
    _$ModaRegionalRoutineGet200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$ModaRegionalRoutineGet200ResponseData._(
            graph: _graph?.build(),
            list: _list?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'graph';
        _graph?.build();
        _$failedField = 'list';
        _list?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModaRegionalRoutineGet200ResponseData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
