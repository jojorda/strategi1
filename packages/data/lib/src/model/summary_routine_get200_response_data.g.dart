// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_routine_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummaryRoutineGet200ResponseData
    extends SummaryRoutineGet200ResponseData {
  @override
  final BuiltList<SummaryRoutineGet200ResponseDataGraphInner>? graph;
  @override
  final BuiltList<SummaryRoutineGet200ResponseDataVehicleInner>? vehicle;
  @override
  final BuiltList<SummaryRoutineGet200ResponseDataNetworkInner>? network;
  @override
  final SummaryRoutineGet200ResponseDataFlight? flight;

  factory _$SummaryRoutineGet200ResponseData(
          [void Function(SummaryRoutineGet200ResponseDataBuilder)? updates]) =>
      (new SummaryRoutineGet200ResponseDataBuilder()..update(updates))._build();

  _$SummaryRoutineGet200ResponseData._(
      {this.graph, this.vehicle, this.network, this.flight})
      : super._();

  @override
  SummaryRoutineGet200ResponseData rebuild(
          void Function(SummaryRoutineGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryRoutineGet200ResponseDataBuilder toBuilder() =>
      new SummaryRoutineGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummaryRoutineGet200ResponseData &&
        graph == other.graph &&
        vehicle == other.vehicle &&
        network == other.network &&
        flight == other.flight;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, graph.hashCode);
    _$hash = $jc(_$hash, vehicle.hashCode);
    _$hash = $jc(_$hash, network.hashCode);
    _$hash = $jc(_$hash, flight.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SummaryRoutineGet200ResponseData')
          ..add('graph', graph)
          ..add('vehicle', vehicle)
          ..add('network', network)
          ..add('flight', flight))
        .toString();
  }
}

class SummaryRoutineGet200ResponseDataBuilder
    implements
        Builder<SummaryRoutineGet200ResponseData,
            SummaryRoutineGet200ResponseDataBuilder> {
  _$SummaryRoutineGet200ResponseData? _$v;

  ListBuilder<SummaryRoutineGet200ResponseDataGraphInner>? _graph;
  ListBuilder<SummaryRoutineGet200ResponseDataGraphInner> get graph =>
      _$this._graph ??=
          new ListBuilder<SummaryRoutineGet200ResponseDataGraphInner>();
  set graph(ListBuilder<SummaryRoutineGet200ResponseDataGraphInner>? graph) =>
      _$this._graph = graph;

  ListBuilder<SummaryRoutineGet200ResponseDataVehicleInner>? _vehicle;
  ListBuilder<SummaryRoutineGet200ResponseDataVehicleInner> get vehicle =>
      _$this._vehicle ??=
          new ListBuilder<SummaryRoutineGet200ResponseDataVehicleInner>();
  set vehicle(
          ListBuilder<SummaryRoutineGet200ResponseDataVehicleInner>? vehicle) =>
      _$this._vehicle = vehicle;

  ListBuilder<SummaryRoutineGet200ResponseDataNetworkInner>? _network;
  ListBuilder<SummaryRoutineGet200ResponseDataNetworkInner> get network =>
      _$this._network ??=
          new ListBuilder<SummaryRoutineGet200ResponseDataNetworkInner>();
  set network(
          ListBuilder<SummaryRoutineGet200ResponseDataNetworkInner>? network) =>
      _$this._network = network;

  SummaryRoutineGet200ResponseDataFlightBuilder? _flight;
  SummaryRoutineGet200ResponseDataFlightBuilder get flight =>
      _$this._flight ??= new SummaryRoutineGet200ResponseDataFlightBuilder();
  set flight(SummaryRoutineGet200ResponseDataFlightBuilder? flight) =>
      _$this._flight = flight;

  SummaryRoutineGet200ResponseDataBuilder() {
    SummaryRoutineGet200ResponseData._defaults(this);
  }

  SummaryRoutineGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _graph = $v.graph?.toBuilder();
      _vehicle = $v.vehicle?.toBuilder();
      _network = $v.network?.toBuilder();
      _flight = $v.flight?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummaryRoutineGet200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummaryRoutineGet200ResponseData;
  }

  @override
  void update(void Function(SummaryRoutineGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummaryRoutineGet200ResponseData build() => _build();

  _$SummaryRoutineGet200ResponseData _build() {
    _$SummaryRoutineGet200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$SummaryRoutineGet200ResponseData._(
            graph: _graph?.build(),
            vehicle: _vehicle?.build(),
            network: _network?.build(),
            flight: _flight?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'graph';
        _graph?.build();
        _$failedField = 'vehicle';
        _vehicle?.build();
        _$failedField = 'network';
        _network?.build();
        _$failedField = 'flight';
        _flight?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SummaryRoutineGet200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
