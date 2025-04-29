// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'focus.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Focus extends Focus {
  @override
  final int? id;
  @override
  final String? idUser;
  @override
  final String? judul;
  @override
  final BuiltList<TransportationData>? simpulTransportasi;
  @override
  final BuiltList<FocusCCTV>? cctv;
  @override
  final BuiltList<FocusVideo>? video30s;
  @override
  final BuiltList<FocusVideo>? videoLiveStreaming;
  @override
  final String? createDate;
  @override
  final String? updateDate;

  factory _$Focus([void Function(FocusBuilder)? updates]) =>
      (new FocusBuilder()..update(updates))._build();

  _$Focus._(
      {this.id,
      this.idUser,
      this.judul,
      this.simpulTransportasi,
      this.cctv,
      this.video30s,
      this.videoLiveStreaming,
      this.createDate,
      this.updateDate})
      : super._();

  @override
  Focus rebuild(void Function(FocusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FocusBuilder toBuilder() => new FocusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Focus &&
        id == other.id &&
        idUser == other.idUser &&
        judul == other.judul &&
        simpulTransportasi == other.simpulTransportasi &&
        cctv == other.cctv &&
        video30s == other.video30s &&
        videoLiveStreaming == other.videoLiveStreaming &&
        createDate == other.createDate &&
        updateDate == other.updateDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, idUser.hashCode);
    _$hash = $jc(_$hash, judul.hashCode);
    _$hash = $jc(_$hash, simpulTransportasi.hashCode);
    _$hash = $jc(_$hash, cctv.hashCode);
    _$hash = $jc(_$hash, video30s.hashCode);
    _$hash = $jc(_$hash, videoLiveStreaming.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, updateDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Focus')
          ..add('id', id)
          ..add('idUser', idUser)
          ..add('judul', judul)
          ..add('simpulTransportasi', simpulTransportasi)
          ..add('cctv', cctv)
          ..add('video30s', video30s)
          ..add('videoLiveStreaming', videoLiveStreaming)
          ..add('createDate', createDate)
          ..add('updateDate', updateDate))
        .toString();
  }
}

class FocusBuilder implements Builder<Focus, FocusBuilder> {
  _$Focus? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _idUser;
  String? get idUser => _$this._idUser;
  set idUser(String? idUser) => _$this._idUser = idUser;

  String? _judul;
  String? get judul => _$this._judul;
  set judul(String? judul) => _$this._judul = judul;

  ListBuilder<TransportationData>? _simpulTransportasi;
  ListBuilder<TransportationData> get simpulTransportasi =>
      _$this._simpulTransportasi ??= new ListBuilder<TransportationData>();
  set simpulTransportasi(ListBuilder<TransportationData>? simpulTransportasi) =>
      _$this._simpulTransportasi = simpulTransportasi;

  ListBuilder<FocusCCTV>? _cctv;
  ListBuilder<FocusCCTV> get cctv =>
      _$this._cctv ??= new ListBuilder<FocusCCTV>();
  set cctv(ListBuilder<FocusCCTV>? cctv) => _$this._cctv = cctv;

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

  String? _createDate;
  String? get createDate => _$this._createDate;
  set createDate(String? createDate) => _$this._createDate = createDate;

  String? _updateDate;
  String? get updateDate => _$this._updateDate;
  set updateDate(String? updateDate) => _$this._updateDate = updateDate;

  FocusBuilder() {
    Focus._defaults(this);
  }

  FocusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _idUser = $v.idUser;
      _judul = $v.judul;
      _simpulTransportasi = $v.simpulTransportasi?.toBuilder();
      _cctv = $v.cctv?.toBuilder();
      _video30s = $v.video30s?.toBuilder();
      _videoLiveStreaming = $v.videoLiveStreaming?.toBuilder();
      _createDate = $v.createDate;
      _updateDate = $v.updateDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Focus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Focus;
  }

  @override
  void update(void Function(FocusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Focus build() => _build();

  _$Focus _build() {
    _$Focus _$result;
    try {
      _$result = _$v ??
          new _$Focus._(
            id: id,
            idUser: idUser,
            judul: judul,
            simpulTransportasi: _simpulTransportasi?.build(),
            cctv: _cctv?.build(),
            video30s: _video30s?.build(),
            videoLiveStreaming: _videoLiveStreaming?.build(),
            createDate: createDate,
            updateDate: updateDate,
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
            r'Focus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
