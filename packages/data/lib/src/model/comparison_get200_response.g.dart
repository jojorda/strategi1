// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comparison_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComparisonGet200Response extends ComparisonGet200Response {
  @override
  final bool? success;
  @override
  final BuiltList<ComparisonGet200ResponseDataInner>? data;

  factory _$ComparisonGet200Response(
          [void Function(ComparisonGet200ResponseBuilder)? updates]) =>
      (new ComparisonGet200ResponseBuilder()..update(updates))._build();

  _$ComparisonGet200Response._({this.success, this.data}) : super._();

  @override
  ComparisonGet200Response rebuild(
          void Function(ComparisonGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComparisonGet200ResponseBuilder toBuilder() =>
      new ComparisonGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComparisonGet200Response &&
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
    return (newBuiltValueToStringHelper(r'ComparisonGet200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class ComparisonGet200ResponseBuilder
    implements
        Builder<ComparisonGet200Response, ComparisonGet200ResponseBuilder> {
  _$ComparisonGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<ComparisonGet200ResponseDataInner>? _data;
  ListBuilder<ComparisonGet200ResponseDataInner> get data =>
      _$this._data ??= new ListBuilder<ComparisonGet200ResponseDataInner>();
  set data(ListBuilder<ComparisonGet200ResponseDataInner>? data) =>
      _$this._data = data;

  ComparisonGet200ResponseBuilder() {
    ComparisonGet200Response._defaults(this);
  }

  ComparisonGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComparisonGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComparisonGet200Response;
  }

  @override
  void update(void Function(ComparisonGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComparisonGet200Response build() => _build();

  _$ComparisonGet200Response _build() {
    _$ComparisonGet200Response _$result;
    try {
      _$result = _$v ??
          new _$ComparisonGet200Response._(
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
            r'ComparisonGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
