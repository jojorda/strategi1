// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_regional_seasonal_get400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaRegionalSeasonalGet400Response
    extends ModaRegionalSeasonalGet400Response {
  @override
  final bool? status;
  @override
  final String? message;

  factory _$ModaRegionalSeasonalGet400Response(
          [void Function(ModaRegionalSeasonalGet400ResponseBuilder)?
              updates]) =>
      (new ModaRegionalSeasonalGet400ResponseBuilder()..update(updates))
          ._build();

  _$ModaRegionalSeasonalGet400Response._({this.status, this.message})
      : super._();

  @override
  ModaRegionalSeasonalGet400Response rebuild(
          void Function(ModaRegionalSeasonalGet400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaRegionalSeasonalGet400ResponseBuilder toBuilder() =>
      new ModaRegionalSeasonalGet400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaRegionalSeasonalGet400Response &&
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
    return (newBuiltValueToStringHelper(r'ModaRegionalSeasonalGet400Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class ModaRegionalSeasonalGet400ResponseBuilder
    implements
        Builder<ModaRegionalSeasonalGet400Response,
            ModaRegionalSeasonalGet400ResponseBuilder> {
  _$ModaRegionalSeasonalGet400Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ModaRegionalSeasonalGet400ResponseBuilder() {
    ModaRegionalSeasonalGet400Response._defaults(this);
  }

  ModaRegionalSeasonalGet400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaRegionalSeasonalGet400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaRegionalSeasonalGet400Response;
  }

  @override
  void update(
      void Function(ModaRegionalSeasonalGet400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaRegionalSeasonalGet400Response build() => _build();

  _$ModaRegionalSeasonalGet400Response _build() {
    final _$result = _$v ??
        new _$ModaRegionalSeasonalGet400Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
