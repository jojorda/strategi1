// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_get200_response_data_cpu_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthGet200ResponseDataCpuUsage
    extends HealthGet200ResponseDataCpuUsage {
  @override
  final num? user;
  @override
  final num? system;

  factory _$HealthGet200ResponseDataCpuUsage(
          [void Function(HealthGet200ResponseDataCpuUsageBuilder)? updates]) =>
      (new HealthGet200ResponseDataCpuUsageBuilder()..update(updates))._build();

  _$HealthGet200ResponseDataCpuUsage._({this.user, this.system}) : super._();

  @override
  HealthGet200ResponseDataCpuUsage rebuild(
          void Function(HealthGet200ResponseDataCpuUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthGet200ResponseDataCpuUsageBuilder toBuilder() =>
      new HealthGet200ResponseDataCpuUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthGet200ResponseDataCpuUsage &&
        user == other.user &&
        system == other.system;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, system.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthGet200ResponseDataCpuUsage')
          ..add('user', user)
          ..add('system', system))
        .toString();
  }
}

class HealthGet200ResponseDataCpuUsageBuilder
    implements
        Builder<HealthGet200ResponseDataCpuUsage,
            HealthGet200ResponseDataCpuUsageBuilder> {
  _$HealthGet200ResponseDataCpuUsage? _$v;

  num? _user;
  num? get user => _$this._user;
  set user(num? user) => _$this._user = user;

  num? _system;
  num? get system => _$this._system;
  set system(num? system) => _$this._system = system;

  HealthGet200ResponseDataCpuUsageBuilder() {
    HealthGet200ResponseDataCpuUsage._defaults(this);
  }

  HealthGet200ResponseDataCpuUsageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _system = $v.system;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthGet200ResponseDataCpuUsage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HealthGet200ResponseDataCpuUsage;
  }

  @override
  void update(void Function(HealthGet200ResponseDataCpuUsageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthGet200ResponseDataCpuUsage build() => _build();

  _$HealthGet200ResponseDataCpuUsage _build() {
    final _$result = _$v ??
        new _$HealthGet200ResponseDataCpuUsage._(
          user: user,
          system: system,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
