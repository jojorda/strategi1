// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_provinsi_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MasterProvinsiGet200Response extends MasterProvinsiGet200Response {
  @override
  final bool? status;
  @override
  final BuiltList<MasterProvinsiGet200ResponseDataInner>? data;

  factory _$MasterProvinsiGet200Response(
          [void Function(MasterProvinsiGet200ResponseBuilder)? updates]) =>
      (new MasterProvinsiGet200ResponseBuilder()..update(updates))._build();

  _$MasterProvinsiGet200Response._({this.status, this.data}) : super._();

  @override
  MasterProvinsiGet200Response rebuild(
          void Function(MasterProvinsiGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MasterProvinsiGet200ResponseBuilder toBuilder() =>
      new MasterProvinsiGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MasterProvinsiGet200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MasterProvinsiGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class MasterProvinsiGet200ResponseBuilder
    implements
        Builder<MasterProvinsiGet200Response,
            MasterProvinsiGet200ResponseBuilder> {
  _$MasterProvinsiGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<MasterProvinsiGet200ResponseDataInner>? _data;
  ListBuilder<MasterProvinsiGet200ResponseDataInner> get data =>
      _$this._data ??= new ListBuilder<MasterProvinsiGet200ResponseDataInner>();
  set data(ListBuilder<MasterProvinsiGet200ResponseDataInner>? data) =>
      _$this._data = data;

  MasterProvinsiGet200ResponseBuilder() {
    MasterProvinsiGet200Response._defaults(this);
  }

  MasterProvinsiGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MasterProvinsiGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MasterProvinsiGet200Response;
  }

  @override
  void update(void Function(MasterProvinsiGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MasterProvinsiGet200Response build() => _build();

  _$MasterProvinsiGet200Response _build() {
    _$MasterProvinsiGet200Response _$result;
    try {
      _$result = _$v ??
          new _$MasterProvinsiGet200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MasterProvinsiGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
