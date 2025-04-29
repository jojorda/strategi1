// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_get200_response_data_memory_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthGet200ResponseDataMemoryUsage
    extends HealthGet200ResponseDataMemoryUsage {
  @override
  final num? rss;
  @override
  final num? heapTotal;
  @override
  final num? heapUsed;
  @override
  final num? external_;
  @override
  final num? arrayBuffers;

  factory _$HealthGet200ResponseDataMemoryUsage(
          [void Function(HealthGet200ResponseDataMemoryUsageBuilder)?
              updates]) =>
      (new HealthGet200ResponseDataMemoryUsageBuilder()..update(updates))
          ._build();

  _$HealthGet200ResponseDataMemoryUsage._(
      {this.rss,
      this.heapTotal,
      this.heapUsed,
      this.external_,
      this.arrayBuffers})
      : super._();

  @override
  HealthGet200ResponseDataMemoryUsage rebuild(
          void Function(HealthGet200ResponseDataMemoryUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthGet200ResponseDataMemoryUsageBuilder toBuilder() =>
      new HealthGet200ResponseDataMemoryUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthGet200ResponseDataMemoryUsage &&
        rss == other.rss &&
        heapTotal == other.heapTotal &&
        heapUsed == other.heapUsed &&
        external_ == other.external_ &&
        arrayBuffers == other.arrayBuffers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rss.hashCode);
    _$hash = $jc(_$hash, heapTotal.hashCode);
    _$hash = $jc(_$hash, heapUsed.hashCode);
    _$hash = $jc(_$hash, external_.hashCode);
    _$hash = $jc(_$hash, arrayBuffers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthGet200ResponseDataMemoryUsage')
          ..add('rss', rss)
          ..add('heapTotal', heapTotal)
          ..add('heapUsed', heapUsed)
          ..add('external_', external_)
          ..add('arrayBuffers', arrayBuffers))
        .toString();
  }
}

class HealthGet200ResponseDataMemoryUsageBuilder
    implements
        Builder<HealthGet200ResponseDataMemoryUsage,
            HealthGet200ResponseDataMemoryUsageBuilder> {
  _$HealthGet200ResponseDataMemoryUsage? _$v;

  num? _rss;
  num? get rss => _$this._rss;
  set rss(num? rss) => _$this._rss = rss;

  num? _heapTotal;
  num? get heapTotal => _$this._heapTotal;
  set heapTotal(num? heapTotal) => _$this._heapTotal = heapTotal;

  num? _heapUsed;
  num? get heapUsed => _$this._heapUsed;
  set heapUsed(num? heapUsed) => _$this._heapUsed = heapUsed;

  num? _external_;
  num? get external_ => _$this._external_;
  set external_(num? external_) => _$this._external_ = external_;

  num? _arrayBuffers;
  num? get arrayBuffers => _$this._arrayBuffers;
  set arrayBuffers(num? arrayBuffers) => _$this._arrayBuffers = arrayBuffers;

  HealthGet200ResponseDataMemoryUsageBuilder() {
    HealthGet200ResponseDataMemoryUsage._defaults(this);
  }

  HealthGet200ResponseDataMemoryUsageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rss = $v.rss;
      _heapTotal = $v.heapTotal;
      _heapUsed = $v.heapUsed;
      _external_ = $v.external_;
      _arrayBuffers = $v.arrayBuffers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthGet200ResponseDataMemoryUsage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HealthGet200ResponseDataMemoryUsage;
  }

  @override
  void update(
      void Function(HealthGet200ResponseDataMemoryUsageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthGet200ResponseDataMemoryUsage build() => _build();

  _$HealthGet200ResponseDataMemoryUsage _build() {
    final _$result = _$v ??
        new _$HealthGet200ResponseDataMemoryUsage._(
          rss: rss,
          heapTotal: heapTotal,
          heapUsed: heapUsed,
          external_: external_,
          arrayBuffers: arrayBuffers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
