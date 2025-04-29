// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comparison_get500_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComparisonGet500Response extends ComparisonGet500Response {
  @override
  final String? error;

  factory _$ComparisonGet500Response(
          [void Function(ComparisonGet500ResponseBuilder)? updates]) =>
      (new ComparisonGet500ResponseBuilder()..update(updates))._build();

  _$ComparisonGet500Response._({this.error}) : super._();

  @override
  ComparisonGet500Response rebuild(
          void Function(ComparisonGet500ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComparisonGet500ResponseBuilder toBuilder() =>
      new ComparisonGet500ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComparisonGet500Response && error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComparisonGet500Response')
          ..add('error', error))
        .toString();
  }
}

class ComparisonGet500ResponseBuilder
    implements
        Builder<ComparisonGet500Response, ComparisonGet500ResponseBuilder> {
  _$ComparisonGet500Response? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ComparisonGet500ResponseBuilder() {
    ComparisonGet500Response._defaults(this);
  }

  ComparisonGet500ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComparisonGet500Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComparisonGet500Response;
  }

  @override
  void update(void Function(ComparisonGet500ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComparisonGet500Response build() => _build();

  _$ComparisonGet500Response _build() {
    final _$result = _$v ??
        new _$ComparisonGet500Response._(
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
