// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_seasonal_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummarySeasonalGet200ResponseData
    extends SummarySeasonalGet200ResponseData {
  @override
  final BuiltList<SummarySeasonalGet200ResponseDataGraphInner>? graph;
  @override
  final BuiltList<SummarySeasonalGet200ResponseDataVehicleInner>? vehicle;
  @override
  final BuiltList<SummarySeasonalGet200ResponseDataNetworkInner>? network;
  @override
  final SummarySeasonalGet200ResponseDataFlight? flight;
  @override
  final SummarySeasonalGet200ResponseDataSailing? sailing;
  @override
  final SummarySeasonalGet200ResponseDataFilter? filter;

  factory _$SummarySeasonalGet200ResponseData(
          [void Function(SummarySeasonalGet200ResponseDataBuilder)? updates]) =>
      (new SummarySeasonalGet200ResponseDataBuilder()..update(updates))
          ._build();

  _$SummarySeasonalGet200ResponseData._(
      {this.graph,
      this.vehicle,
      this.network,
      this.flight,
      this.sailing,
      this.filter})
      : super._();

  @override
  SummarySeasonalGet200ResponseData rebuild(
          void Function(SummarySeasonalGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummarySeasonalGet200ResponseDataBuilder toBuilder() =>
      new SummarySeasonalGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummarySeasonalGet200ResponseData &&
        graph == other.graph &&
        vehicle == other.vehicle &&
        network == other.network &&
        flight == other.flight &&
        sailing == other.sailing &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, graph.hashCode);
    _$hash = $jc(_$hash, vehicle.hashCode);
    _$hash = $jc(_$hash, network.hashCode);
    _$hash = $jc(_$hash, flight.hashCode);
    _$hash = $jc(_$hash, sailing.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SummarySeasonalGet200ResponseData')
          ..add('graph', graph)
          ..add('vehicle', vehicle)
          ..add('network', network)
          ..add('flight', flight)
          ..add('sailing', sailing)
          ..add('filter', filter))
        .toString();
  }
}

class SummarySeasonalGet200ResponseDataBuilder
    implements
        Builder<SummarySeasonalGet200ResponseData,
            SummarySeasonalGet200ResponseDataBuilder> {
  _$SummarySeasonalGet200ResponseData? _$v;

  ListBuilder<SummarySeasonalGet200ResponseDataGraphInner>? _graph;
  ListBuilder<SummarySeasonalGet200ResponseDataGraphInner> get graph =>
      _$this._graph ??=
          new ListBuilder<SummarySeasonalGet200ResponseDataGraphInner>();
  set graph(ListBuilder<SummarySeasonalGet200ResponseDataGraphInner>? graph) =>
      _$this._graph = graph;

  ListBuilder<SummarySeasonalGet200ResponseDataVehicleInner>? _vehicle;
  ListBuilder<SummarySeasonalGet200ResponseDataVehicleInner> get vehicle =>
      _$this._vehicle ??=
          new ListBuilder<SummarySeasonalGet200ResponseDataVehicleInner>();
  set vehicle(
          ListBuilder<SummarySeasonalGet200ResponseDataVehicleInner>?
              vehicle) =>
      _$this._vehicle = vehicle;

  ListBuilder<SummarySeasonalGet200ResponseDataNetworkInner>? _network;
  ListBuilder<SummarySeasonalGet200ResponseDataNetworkInner> get network =>
      _$this._network ??=
          new ListBuilder<SummarySeasonalGet200ResponseDataNetworkInner>();
  set network(
          ListBuilder<SummarySeasonalGet200ResponseDataNetworkInner>?
              network) =>
      _$this._network = network;

  SummarySeasonalGet200ResponseDataFlightBuilder? _flight;
  SummarySeasonalGet200ResponseDataFlightBuilder get flight =>
      _$this._flight ??= new SummarySeasonalGet200ResponseDataFlightBuilder();
  set flight(SummarySeasonalGet200ResponseDataFlightBuilder? flight) =>
      _$this._flight = flight;

  SummarySeasonalGet200ResponseDataSailingBuilder? _sailing;
  SummarySeasonalGet200ResponseDataSailingBuilder get sailing =>
      _$this._sailing ??= new SummarySeasonalGet200ResponseDataSailingBuilder();
  set sailing(SummarySeasonalGet200ResponseDataSailingBuilder? sailing) =>
      _$this._sailing = sailing;

  SummarySeasonalGet200ResponseDataFilterBuilder? _filter;
  SummarySeasonalGet200ResponseDataFilterBuilder get filter =>
      _$this._filter ??= new SummarySeasonalGet200ResponseDataFilterBuilder();
  set filter(SummarySeasonalGet200ResponseDataFilterBuilder? filter) =>
      _$this._filter = filter;

  SummarySeasonalGet200ResponseDataBuilder() {
    SummarySeasonalGet200ResponseData._defaults(this);
  }

  SummarySeasonalGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _graph = $v.graph?.toBuilder();
      _vehicle = $v.vehicle?.toBuilder();
      _network = $v.network?.toBuilder();
      _flight = $v.flight?.toBuilder();
      _sailing = $v.sailing?.toBuilder();
      _filter = $v.filter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummarySeasonalGet200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummarySeasonalGet200ResponseData;
  }

  @override
  void update(
      void Function(SummarySeasonalGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummarySeasonalGet200ResponseData build() => _build();

  _$SummarySeasonalGet200ResponseData _build() {
    _$SummarySeasonalGet200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$SummarySeasonalGet200ResponseData._(
            graph: _graph?.build(),
            vehicle: _vehicle?.build(),
            network: _network?.build(),
            flight: _flight?.build(),
            sailing: _sailing?.build(),
            filter: _filter?.build(),
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
        _$failedField = 'sailing';
        _sailing?.build();
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SummarySeasonalGet200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
