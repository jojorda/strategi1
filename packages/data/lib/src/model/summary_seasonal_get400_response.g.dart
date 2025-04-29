// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_seasonal_get400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummarySeasonalGet400Response extends SummarySeasonalGet400Response {
  @override
  final bool? status;
  @override
  final String? message;

  factory _$SummarySeasonalGet400Response(
          [void Function(SummarySeasonalGet400ResponseBuilder)? updates]) =>
      (new SummarySeasonalGet400ResponseBuilder()..update(updates))._build();

  _$SummarySeasonalGet400Response._({this.status, this.message}) : super._();

  @override
  SummarySeasonalGet400Response rebuild(
          void Function(SummarySeasonalGet400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummarySeasonalGet400ResponseBuilder toBuilder() =>
      new SummarySeasonalGet400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummarySeasonalGet400Response &&
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
    return (newBuiltValueToStringHelper(r'SummarySeasonalGet400Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class SummarySeasonalGet400ResponseBuilder
    implements
        Builder<SummarySeasonalGet400Response,
            SummarySeasonalGet400ResponseBuilder> {
  _$SummarySeasonalGet400Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SummarySeasonalGet400ResponseBuilder() {
    SummarySeasonalGet400Response._defaults(this);
  }

  SummarySeasonalGet400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummarySeasonalGet400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummarySeasonalGet400Response;
  }

  @override
  void update(void Function(SummarySeasonalGet400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummarySeasonalGet400Response build() => _build();

  _$SummarySeasonalGet400Response _build() {
    final _$result = _$v ??
        new _$SummarySeasonalGet400Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
