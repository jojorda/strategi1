// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_user_approval_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MasterUserApprovalGet200Response
    extends MasterUserApprovalGet200Response {
  @override
  final bool? status;
  @override
  final BuiltList<MasterUserApprovalGet200ResponseDataInner>? data;

  factory _$MasterUserApprovalGet200Response(
          [void Function(MasterUserApprovalGet200ResponseBuilder)? updates]) =>
      (new MasterUserApprovalGet200ResponseBuilder()..update(updates))._build();

  _$MasterUserApprovalGet200Response._({this.status, this.data}) : super._();

  @override
  MasterUserApprovalGet200Response rebuild(
          void Function(MasterUserApprovalGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MasterUserApprovalGet200ResponseBuilder toBuilder() =>
      new MasterUserApprovalGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MasterUserApprovalGet200Response &&
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
    return (newBuiltValueToStringHelper(r'MasterUserApprovalGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class MasterUserApprovalGet200ResponseBuilder
    implements
        Builder<MasterUserApprovalGet200Response,
            MasterUserApprovalGet200ResponseBuilder> {
  _$MasterUserApprovalGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<MasterUserApprovalGet200ResponseDataInner>? _data;
  ListBuilder<MasterUserApprovalGet200ResponseDataInner> get data =>
      _$this._data ??=
          new ListBuilder<MasterUserApprovalGet200ResponseDataInner>();
  set data(ListBuilder<MasterUserApprovalGet200ResponseDataInner>? data) =>
      _$this._data = data;

  MasterUserApprovalGet200ResponseBuilder() {
    MasterUserApprovalGet200Response._defaults(this);
  }

  MasterUserApprovalGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MasterUserApprovalGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MasterUserApprovalGet200Response;
  }

  @override
  void update(void Function(MasterUserApprovalGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MasterUserApprovalGet200Response build() => _build();

  _$MasterUserApprovalGet200Response _build() {
    _$MasterUserApprovalGet200Response _$result;
    try {
      _$result = _$v ??
          new _$MasterUserApprovalGet200Response._(
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
            r'MasterUserApprovalGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
