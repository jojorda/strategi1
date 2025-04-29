// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_regional_routine_get200_response_data_graph_weekly_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner
    extends ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner {
  @override
  final Date? date;
  @override
  final num? value;

  factory _$ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner(
          [void Function(
                  ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder)?
              updates]) =>
      (new ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder()
            ..update(updates))
          ._build();

  _$ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner._(
      {this.date, this.value})
      : super._();

  @override
  ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner rebuild(
          void Function(
                  ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder toBuilder() =>
      new ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner &&
        date == other.date &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner')
          ..add('date', date)
          ..add('value', value))
        .toString();
  }
}

class ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder
    implements
        Builder<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner,
            ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder> {
  _$ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder() {
    ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner._defaults(this);
  }

  ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner;
  }

  @override
  void update(
      void Function(
              ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner build() => _build();

  _$ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner _build() {
    final _$result = _$v ??
        new _$ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner._(
          date: date,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
