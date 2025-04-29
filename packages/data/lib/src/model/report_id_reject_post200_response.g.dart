// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_id_reject_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportIdRejectPost200Response extends ReportIdRejectPost200Response {
  @override
  final bool? success;
  @override
  final ReportIdRejectPost200ResponseData? data;
  @override
  final String? message;

  factory _$ReportIdRejectPost200Response(
          [void Function(ReportIdRejectPost200ResponseBuilder)? updates]) =>
      (new ReportIdRejectPost200ResponseBuilder()..update(updates))._build();

  _$ReportIdRejectPost200Response._({this.success, this.data, this.message})
      : super._();

  @override
  ReportIdRejectPost200Response rebuild(
          void Function(ReportIdRejectPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportIdRejectPost200ResponseBuilder toBuilder() =>
      new ReportIdRejectPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportIdRejectPost200Response &&
        success == other.success &&
        data == other.data &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportIdRejectPost200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class ReportIdRejectPost200ResponseBuilder
    implements
        Builder<ReportIdRejectPost200Response,
            ReportIdRejectPost200ResponseBuilder> {
  _$ReportIdRejectPost200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ReportIdRejectPost200ResponseDataBuilder? _data;
  ReportIdRejectPost200ResponseDataBuilder get data =>
      _$this._data ??= new ReportIdRejectPost200ResponseDataBuilder();
  set data(ReportIdRejectPost200ResponseDataBuilder? data) =>
      _$this._data = data;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ReportIdRejectPost200ResponseBuilder() {
    ReportIdRejectPost200Response._defaults(this);
  }

  ReportIdRejectPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportIdRejectPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportIdRejectPost200Response;
  }

  @override
  void update(void Function(ReportIdRejectPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportIdRejectPost200Response build() => _build();

  _$ReportIdRejectPost200Response _build() {
    _$ReportIdRejectPost200Response _$result;
    try {
      _$result = _$v ??
          new _$ReportIdRejectPost200Response._(
            success: success,
            data: _data?.build(),
            message: message,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReportIdRejectPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
