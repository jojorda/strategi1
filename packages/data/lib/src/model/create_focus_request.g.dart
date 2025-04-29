// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_focus_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFocusRequest extends CreateFocusRequest {
  @override
  final String? judul;
  @override
  final BuiltList<CreateFocusRequestSimpulTransportasiInner>?
      simpulTransportasi;
  @override
  final BuiltList<CreateFocusRequestCctvInner>? cctv;
  @override
  final BuiltList<FocusVideo>? video30s;
  @override
  final BuiltList<FocusVideo>? videoLiveStreaming;

  factory _$CreateFocusRequest(
          [void Function(CreateFocusRequestBuilder)? updates]) =>
      (new CreateFocusRequestBuilder()..update(updates))._build();

  _$CreateFocusRequest._(
      {this.judul,
      this.simpulTransportasi,
      this.cctv,
      this.video30s,
      this.videoLiveStreaming})
      : super._();

  @override
  CreateFocusRequest rebuild(
          void Function(CreateFocusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFocusRequestBuilder toBuilder() =>
      new CreateFocusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFocusRequest &&
        judul == other.judul &&
        simpulTransportasi == other.simpulTransportasi &&
        cctv == other.cctv &&
        video30s == other.video30s &&
        videoLiveStreaming == other.videoLiveStreaming;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, judul.hashCode);
    _$hash = $jc(_$hash, simpulTransportasi.hashCode);
    _$hash = $jc(_$hash, cctv.hashCode);
    _$hash = $jc(_$hash, video30s.hashCode);
    _$hash = $jc(_$hash, videoLiveStreaming.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateFocusRequest')
          ..add('judul', judul)
          ..add('simpulTransportasi', simpulTransportasi)
          ..add('cctv', cctv)
          ..add('video30s', video30s)
          ..add('videoLiveStreaming', videoLiveStreaming))
        .toString();
  }
}

class CreateFocusRequestBuilder
    implements Builder<CreateFocusRequest, CreateFocusRequestBuilder> {
  _$CreateFocusRequest? _$v;

  String? _judul;
  String? get judul => _$this._judul;
  set judul(String? judul) => _$this._judul = judul;

  ListBuilder<CreateFocusRequestSimpulTransportasiInner>? _simpulTransportasi;
  ListBuilder<CreateFocusRequestSimpulTransportasiInner>
      get simpulTransportasi => _$this._simpulTransportasi ??=
          new ListBuilder<CreateFocusRequestSimpulTransportasiInner>();
  set simpulTransportasi(
          ListBuilder<CreateFocusRequestSimpulTransportasiInner>?
              simpulTransportasi) =>
      _$this._simpulTransportasi = simpulTransportasi;

  ListBuilder<CreateFocusRequestCctvInner>? _cctv;
  ListBuilder<CreateFocusRequestCctvInner> get cctv =>
      _$this._cctv ??= new ListBuilder<CreateFocusRequestCctvInner>();
  set cctv(ListBuilder<CreateFocusRequestCctvInner>? cctv) =>
      _$this._cctv = cctv;

  ListBuilder<FocusVideo>? _video30s;
  ListBuilder<FocusVideo> get video30s =>
      _$this._video30s ??= new ListBuilder<FocusVideo>();
  set video30s(ListBuilder<FocusVideo>? video30s) =>
      _$this._video30s = video30s;

  ListBuilder<FocusVideo>? _videoLiveStreaming;
  ListBuilder<FocusVideo> get videoLiveStreaming =>
      _$this._videoLiveStreaming ??= new ListBuilder<FocusVideo>();
  set videoLiveStreaming(ListBuilder<FocusVideo>? videoLiveStreaming) =>
      _$this._videoLiveStreaming = videoLiveStreaming;

  CreateFocusRequestBuilder() {
    CreateFocusRequest._defaults(this);
  }

  CreateFocusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _judul = $v.judul;
      _simpulTransportasi = $v.simpulTransportasi?.toBuilder();
      _cctv = $v.cctv?.toBuilder();
      _video30s = $v.video30s?.toBuilder();
      _videoLiveStreaming = $v.videoLiveStreaming?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFocusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateFocusRequest;
  }

  @override
  void update(void Function(CreateFocusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFocusRequest build() => _build();

  _$CreateFocusRequest _build() {
    _$CreateFocusRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateFocusRequest._(
            judul: judul,
            simpulTransportasi: _simpulTransportasi?.build(),
            cctv: _cctv?.build(),
            video30s: _video30s?.build(),
            videoLiveStreaming: _videoLiveStreaming?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'simpulTransportasi';
        _simpulTransportasi?.build();
        _$failedField = 'cctv';
        _cctv?.build();
        _$failedField = 'video30s';
        _video30s?.build();
        _$failedField = 'videoLiveStreaming';
        _videoLiveStreaming?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateFocusRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
