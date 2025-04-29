// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posko_type_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PoskoTypeGet200Response extends PoskoTypeGet200Response {
  @override
  final bool? success;
  @override
  final BuiltList<JenisPosko>? data;

  factory _$PoskoTypeGet200Response(
          [void Function(PoskoTypeGet200ResponseBuilder)? updates]) =>
      (new PoskoTypeGet200ResponseBuilder()..update(updates))._build();

  _$PoskoTypeGet200Response._({this.success, this.data}) : super._();

  @override
  PoskoTypeGet200Response rebuild(
          void Function(PoskoTypeGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PoskoTypeGet200ResponseBuilder toBuilder() =>
      new PoskoTypeGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PoskoTypeGet200Response &&
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
    return (newBuiltValueToStringHelper(r'PoskoTypeGet200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class PoskoTypeGet200ResponseBuilder
    implements
        Builder<PoskoTypeGet200Response, PoskoTypeGet200ResponseBuilder> {
  _$PoskoTypeGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<JenisPosko>? _data;
  ListBuilder<JenisPosko> get data =>
      _$this._data ??= new ListBuilder<JenisPosko>();
  set data(ListBuilder<JenisPosko>? data) => _$this._data = data;

  PoskoTypeGet200ResponseBuilder() {
    PoskoTypeGet200Response._defaults(this);
  }

  PoskoTypeGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PoskoTypeGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PoskoTypeGet200Response;
  }

  @override
  void update(void Function(PoskoTypeGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PoskoTypeGet200Response build() => _build();

  _$PoskoTypeGet200Response _build() {
    _$PoskoTypeGet200Response _$result;
    try {
      _$result = _$v ??
          new _$PoskoTypeGet200Response._(
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
            r'PoskoTypeGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
