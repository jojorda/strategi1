// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthGet200ResponseData extends HealthGet200ResponseData {
  @override
  final String? message;
  @override
  final HealthGet200ResponseDataMemoryUsage? memoryUsage;
  @override
  final HealthGet200ResponseDataCpuUsage? cpuUsage;
  @override
  final String? totalMemory;
  @override
  final String? freeMemory;

  factory _$HealthGet200ResponseData(
          [void Function(HealthGet200ResponseDataBuilder)? updates]) =>
      (new HealthGet200ResponseDataBuilder()..update(updates))._build();

  _$HealthGet200ResponseData._(
      {this.message,
      this.memoryUsage,
      this.cpuUsage,
      this.totalMemory,
      this.freeMemory})
      : super._();

  @override
  HealthGet200ResponseData rebuild(
          void Function(HealthGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthGet200ResponseDataBuilder toBuilder() =>
      new HealthGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthGet200ResponseData &&
        message == other.message &&
        memoryUsage == other.memoryUsage &&
        cpuUsage == other.cpuUsage &&
        totalMemory == other.totalMemory &&
        freeMemory == other.freeMemory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, memoryUsage.hashCode);
    _$hash = $jc(_$hash, cpuUsage.hashCode);
    _$hash = $jc(_$hash, totalMemory.hashCode);
    _$hash = $jc(_$hash, freeMemory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthGet200ResponseData')
          ..add('message', message)
          ..add('memoryUsage', memoryUsage)
          ..add('cpuUsage', cpuUsage)
          ..add('totalMemory', totalMemory)
          ..add('freeMemory', freeMemory))
        .toString();
  }
}

class HealthGet200ResponseDataBuilder
    implements
        Builder<HealthGet200ResponseData, HealthGet200ResponseDataBuilder> {
  _$HealthGet200ResponseData? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  HealthGet200ResponseDataMemoryUsageBuilder? _memoryUsage;
  HealthGet200ResponseDataMemoryUsageBuilder get memoryUsage =>
      _$this._memoryUsage ??= new HealthGet200ResponseDataMemoryUsageBuilder();
  set memoryUsage(HealthGet200ResponseDataMemoryUsageBuilder? memoryUsage) =>
      _$this._memoryUsage = memoryUsage;

  HealthGet200ResponseDataCpuUsageBuilder? _cpuUsage;
  HealthGet200ResponseDataCpuUsageBuilder get cpuUsage =>
      _$this._cpuUsage ??= new HealthGet200ResponseDataCpuUsageBuilder();
  set cpuUsage(HealthGet200ResponseDataCpuUsageBuilder? cpuUsage) =>
      _$this._cpuUsage = cpuUsage;

  String? _totalMemory;
  String? get totalMemory => _$this._totalMemory;
  set totalMemory(String? totalMemory) => _$this._totalMemory = totalMemory;

  String? _freeMemory;
  String? get freeMemory => _$this._freeMemory;
  set freeMemory(String? freeMemory) => _$this._freeMemory = freeMemory;

  HealthGet200ResponseDataBuilder() {
    HealthGet200ResponseData._defaults(this);
  }

  HealthGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _memoryUsage = $v.memoryUsage?.toBuilder();
      _cpuUsage = $v.cpuUsage?.toBuilder();
      _totalMemory = $v.totalMemory;
      _freeMemory = $v.freeMemory;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthGet200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HealthGet200ResponseData;
  }

  @override
  void update(void Function(HealthGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthGet200ResponseData build() => _build();

  _$HealthGet200ResponseData _build() {
    _$HealthGet200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$HealthGet200ResponseData._(
            message: message,
            memoryUsage: _memoryUsage?.build(),
            cpuUsage: _cpuUsage?.build(),
            totalMemory: totalMemory,
            freeMemory: freeMemory,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'memoryUsage';
        _memoryUsage?.build();
        _$failedField = 'cpuUsage';
        _cpuUsage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HealthGet200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
