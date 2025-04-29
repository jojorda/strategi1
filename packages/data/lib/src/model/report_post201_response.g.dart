// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_post201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportPost201Response extends ReportPost201Response {
  @override
  final bool? success;
  @override
  final Report? data;

  factory _$ReportPost201Response(
          [void Function(ReportPost201ResponseBuilder)? updates]) =>
      (new ReportPost201ResponseBuilder()..update(updates))._build();

  _$ReportPost201Response._({this.success, this.data}) : super._();

  @override
  ReportPost201Response rebuild(
          void Function(ReportPost201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportPost201ResponseBuilder toBuilder() =>
      new ReportPost201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportPost201Response &&
        success == other.success &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportPost201Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class ReportPost201ResponseBuilder
    implements Builder<ReportPost201Response, ReportPost201ResponseBuilder> {
  _$ReportPost201Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ReportBuilder? _data;
  ReportBuilder get data => _$this._data ??= new ReportBuilder();
  set data(ReportBuilder? data) => _$this._data = data;

  ReportPost201ResponseBuilder() {
    ReportPost201Response._defaults(this);
  }

  ReportPost201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportPost201Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportPost201Response;
  }

  @override
  void update(void Function(ReportPost201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportPost201Response build() => _build();

  _$ReportPost201Response _build() {
    _$ReportPost201Response _$result;
    try {
      _$result = _$v ??
          new _$ReportPost201Response._(
            success: success,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReportPost201Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
