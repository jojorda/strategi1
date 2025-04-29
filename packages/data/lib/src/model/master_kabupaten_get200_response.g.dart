// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_kabupaten_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MasterKabupatenGet200Response extends MasterKabupatenGet200Response {
  @override
  final bool? status;
  @override
  final BuiltList<MasterKabupatenGet200ResponseDataInner>? data;

  factory _$MasterKabupatenGet200Response(
          [void Function(MasterKabupatenGet200ResponseBuilder)? updates]) =>
      (new MasterKabupatenGet200ResponseBuilder()..update(updates))._build();

  _$MasterKabupatenGet200Response._({this.status, this.data}) : super._();

  @override
  MasterKabupatenGet200Response rebuild(
          void Function(MasterKabupatenGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MasterKabupatenGet200ResponseBuilder toBuilder() =>
      new MasterKabupatenGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MasterKabupatenGet200Response &&
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
    return (newBuiltValueToStringHelper(r'MasterKabupatenGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class MasterKabupatenGet200ResponseBuilder
    implements
        Builder<MasterKabupatenGet200Response,
            MasterKabupatenGet200ResponseBuilder> {
  _$MasterKabupatenGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<MasterKabupatenGet200ResponseDataInner>? _data;
  ListBuilder<MasterKabupatenGet200ResponseDataInner> get data =>
      _$this._data ??=
          new ListBuilder<MasterKabupatenGet200ResponseDataInner>();
  set data(ListBuilder<MasterKabupatenGet200ResponseDataInner>? data) =>
      _$this._data = data;

  MasterKabupatenGet200ResponseBuilder() {
    MasterKabupatenGet200Response._defaults(this);
  }

  MasterKabupatenGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MasterKabupatenGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MasterKabupatenGet200Response;
  }

  @override
  void update(void Function(MasterKabupatenGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MasterKabupatenGet200Response build() => _build();

  _$MasterKabupatenGet200Response _build() {
    _$MasterKabupatenGet200Response _$result;
    try {
      _$result = _$v ??
          new _$MasterKabupatenGet200Response._(
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
            r'MasterKabupatenGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
