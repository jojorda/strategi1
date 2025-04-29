// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comparison_get400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComparisonGet400Response extends ComparisonGet400Response {
  @override
  final bool? status;
  @override
  final String? message;

  factory _$ComparisonGet400Response(
          [void Function(ComparisonGet400ResponseBuilder)? updates]) =>
      (new ComparisonGet400ResponseBuilder()..update(updates))._build();

  _$ComparisonGet400Response._({this.status, this.message}) : super._();

  @override
  ComparisonGet400Response rebuild(
          void Function(ComparisonGet400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComparisonGet400ResponseBuilder toBuilder() =>
      new ComparisonGet400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComparisonGet400Response &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComparisonGet400Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class ComparisonGet400ResponseBuilder
    implements
        Builder<ComparisonGet400Response, ComparisonGet400ResponseBuilder> {
  _$ComparisonGet400Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ComparisonGet400ResponseBuilder() {
    ComparisonGet400Response._defaults(this);
  }

  ComparisonGet400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComparisonGet400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComparisonGet400Response;
  }

  @override
  void update(void Function(ComparisonGet400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComparisonGet400Response build() => _build();

  _$ComparisonGet400Response _build() {
    final _$result = _$v ??
        new _$ComparisonGet400Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
