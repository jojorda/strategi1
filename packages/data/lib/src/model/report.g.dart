// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Report extends Report {
  @override
  final int? id;
  @override
  final String? type;
  @override
  final String? matra;
  @override
  final String? event;
  @override
  final String? nama;
  @override
  final String? personil;
  @override
  final String? pengikut;
  @override
  final Date? tanggal;
  @override
  final String? provinsi;
  @override
  final String? kabupaten;
  @override
  final String? angkutan;
  @override
  final String? unitPelayanan;
  @override
  final String? deskripsi;
  @override
  final bool? isKejadianMenonjol;
  @override
  final String? kejadianMenonjol;
  @override
  final String? koordinatKejadianMenonjol;
  @override
  final bool? isKecelakaan;
  @override
  final String? kecelakaan;
  @override
  final String? koordinatKecelakaan;
  @override
  final String? lokasiKecelakaan;
  @override
  final String? pembuat;
  @override
  final String? persetujuan;
  @override
  final String? file;
  @override
  final String? photo;
  @override
  final String? captionPhoto;
  @override
  final bool? isApproved;
  @override
  final String? approvedBy;
  @override
  final String? approvedDate;
  @override
  final String? approvedNotes;
  @override
  final String? rejectedBy;
  @override
  final String? rejectedDate;
  @override
  final String? rejectedReason;
  @override
  final String? rejectedAdditionalComments;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final BuiltList<Kecelakaan>? kecelakaanList;
  @override
  final BuiltList<Cuaca>? cuacaList;

  factory _$Report([void Function(ReportBuilder)? updates]) =>
      (new ReportBuilder()..update(updates))._build();

  _$Report._(
      {this.id,
      this.type,
      this.matra,
      this.event,
      this.nama,
      this.personil,
      this.pengikut,
      this.tanggal,
      this.provinsi,
      this.kabupaten,
      this.angkutan,
      this.unitPelayanan,
      this.deskripsi,
      this.isKejadianMenonjol,
      this.kejadianMenonjol,
      this.koordinatKejadianMenonjol,
      this.isKecelakaan,
      this.kecelakaan,
      this.koordinatKecelakaan,
      this.lokasiKecelakaan,
      this.pembuat,
      this.persetujuan,
      this.file,
      this.photo,
      this.captionPhoto,
      this.isApproved,
      this.approvedBy,
      this.approvedDate,
      this.approvedNotes,
      this.rejectedBy,
      this.rejectedDate,
      this.rejectedReason,
      this.rejectedAdditionalComments,
      this.createdAt,
      this.updatedAt,
      this.kecelakaanList,
      this.cuacaList})
      : super._();

  @override
  Report rebuild(void Function(ReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportBuilder toBuilder() => new ReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Report &&
        id == other.id &&
        type == other.type &&
        matra == other.matra &&
        event == other.event &&
        nama == other.nama &&
        personil == other.personil &&
        pengikut == other.pengikut &&
        tanggal == other.tanggal &&
        provinsi == other.provinsi &&
        kabupaten == other.kabupaten &&
        angkutan == other.angkutan &&
        unitPelayanan == other.unitPelayanan &&
        deskripsi == other.deskripsi &&
        isKejadianMenonjol == other.isKejadianMenonjol &&
        kejadianMenonjol == other.kejadianMenonjol &&
        koordinatKejadianMenonjol == other.koordinatKejadianMenonjol &&
        isKecelakaan == other.isKecelakaan &&
        kecelakaan == other.kecelakaan &&
        koordinatKecelakaan == other.koordinatKecelakaan &&
        lokasiKecelakaan == other.lokasiKecelakaan &&
        pembuat == other.pembuat &&
        persetujuan == other.persetujuan &&
        file == other.file &&
        photo == other.photo &&
        captionPhoto == other.captionPhoto &&
        isApproved == other.isApproved &&
        approvedBy == other.approvedBy &&
        approvedDate == other.approvedDate &&
        approvedNotes == other.approvedNotes &&
        rejectedBy == other.rejectedBy &&
        rejectedDate == other.rejectedDate &&
        rejectedReason == other.rejectedReason &&
        rejectedAdditionalComments == other.rejectedAdditionalComments &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        kecelakaanList == other.kecelakaanList &&
        cuacaList == other.cuacaList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, matra.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, nama.hashCode);
    _$hash = $jc(_$hash, personil.hashCode);
    _$hash = $jc(_$hash, pengikut.hashCode);
    _$hash = $jc(_$hash, tanggal.hashCode);
    _$hash = $jc(_$hash, provinsi.hashCode);
    _$hash = $jc(_$hash, kabupaten.hashCode);
    _$hash = $jc(_$hash, angkutan.hashCode);
    _$hash = $jc(_$hash, unitPelayanan.hashCode);
    _$hash = $jc(_$hash, deskripsi.hashCode);
    _$hash = $jc(_$hash, isKejadianMenonjol.hashCode);
    _$hash = $jc(_$hash, kejadianMenonjol.hashCode);
    _$hash = $jc(_$hash, koordinatKejadianMenonjol.hashCode);
    _$hash = $jc(_$hash, isKecelakaan.hashCode);
    _$hash = $jc(_$hash, kecelakaan.hashCode);
    _$hash = $jc(_$hash, koordinatKecelakaan.hashCode);
    _$hash = $jc(_$hash, lokasiKecelakaan.hashCode);
    _$hash = $jc(_$hash, pembuat.hashCode);
    _$hash = $jc(_$hash, persetujuan.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, captionPhoto.hashCode);
    _$hash = $jc(_$hash, isApproved.hashCode);
    _$hash = $jc(_$hash, approvedBy.hashCode);
    _$hash = $jc(_$hash, approvedDate.hashCode);
    _$hash = $jc(_$hash, approvedNotes.hashCode);
    _$hash = $jc(_$hash, rejectedBy.hashCode);
    _$hash = $jc(_$hash, rejectedDate.hashCode);
    _$hash = $jc(_$hash, rejectedReason.hashCode);
    _$hash = $jc(_$hash, rejectedAdditionalComments.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, kecelakaanList.hashCode);
    _$hash = $jc(_$hash, cuacaList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Report')
          ..add('id', id)
          ..add('type', type)
          ..add('matra', matra)
          ..add('event', event)
          ..add('nama', nama)
          ..add('personil', personil)
          ..add('pengikut', pengikut)
          ..add('tanggal', tanggal)
          ..add('provinsi', provinsi)
          ..add('kabupaten', kabupaten)
          ..add('angkutan', angkutan)
          ..add('unitPelayanan', unitPelayanan)
          ..add('deskripsi', deskripsi)
          ..add('isKejadianMenonjol', isKejadianMenonjol)
          ..add('kejadianMenonjol', kejadianMenonjol)
          ..add('koordinatKejadianMenonjol', koordinatKejadianMenonjol)
          ..add('isKecelakaan', isKecelakaan)
          ..add('kecelakaan', kecelakaan)
          ..add('koordinatKecelakaan', koordinatKecelakaan)
          ..add('lokasiKecelakaan', lokasiKecelakaan)
          ..add('pembuat', pembuat)
          ..add('persetujuan', persetujuan)
          ..add('file', file)
          ..add('photo', photo)
          ..add('captionPhoto', captionPhoto)
          ..add('isApproved', isApproved)
          ..add('approvedBy', approvedBy)
          ..add('approvedDate', approvedDate)
          ..add('approvedNotes', approvedNotes)
          ..add('rejectedBy', rejectedBy)
          ..add('rejectedDate', rejectedDate)
          ..add('rejectedReason', rejectedReason)
          ..add('rejectedAdditionalComments', rejectedAdditionalComments)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('kecelakaanList', kecelakaanList)
          ..add('cuacaList', cuacaList))
        .toString();
  }
}

class ReportBuilder implements Builder<Report, ReportBuilder> {
  _$Report? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _matra;
  String? get matra => _$this._matra;
  set matra(String? matra) => _$this._matra = matra;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  String? _nama;
  String? get nama => _$this._nama;
  set nama(String? nama) => _$this._nama = nama;

  String? _personil;
  String? get personil => _$this._personil;
  set personil(String? personil) => _$this._personil = personil;

  String? _pengikut;
  String? get pengikut => _$this._pengikut;
  set pengikut(String? pengikut) => _$this._pengikut = pengikut;

  Date? _tanggal;
  Date? get tanggal => _$this._tanggal;
  set tanggal(Date? tanggal) => _$this._tanggal = tanggal;

  String? _provinsi;
  String? get provinsi => _$this._provinsi;
  set provinsi(String? provinsi) => _$this._provinsi = provinsi;

  String? _kabupaten;
  String? get kabupaten => _$this._kabupaten;
  set kabupaten(String? kabupaten) => _$this._kabupaten = kabupaten;

  String? _angkutan;
  String? get angkutan => _$this._angkutan;
  set angkutan(String? angkutan) => _$this._angkutan = angkutan;

  String? _unitPelayanan;
  String? get unitPelayanan => _$this._unitPelayanan;
  set unitPelayanan(String? unitPelayanan) =>
      _$this._unitPelayanan = unitPelayanan;

  String? _deskripsi;
  String? get deskripsi => _$this._deskripsi;
  set deskripsi(String? deskripsi) => _$this._deskripsi = deskripsi;

  bool? _isKejadianMenonjol;
  bool? get isKejadianMenonjol => _$this._isKejadianMenonjol;
  set isKejadianMenonjol(bool? isKejadianMenonjol) =>
      _$this._isKejadianMenonjol = isKejadianMenonjol;

  String? _kejadianMenonjol;
  String? get kejadianMenonjol => _$this._kejadianMenonjol;
  set kejadianMenonjol(String? kejadianMenonjol) =>
      _$this._kejadianMenonjol = kejadianMenonjol;

  String? _koordinatKejadianMenonjol;
  String? get koordinatKejadianMenonjol => _$this._koordinatKejadianMenonjol;
  set koordinatKejadianMenonjol(String? koordinatKejadianMenonjol) =>
      _$this._koordinatKejadianMenonjol = koordinatKejadianMenonjol;

  bool? _isKecelakaan;
  bool? get isKecelakaan => _$this._isKecelakaan;
  set isKecelakaan(bool? isKecelakaan) => _$this._isKecelakaan = isKecelakaan;

  String? _kecelakaan;
  String? get kecelakaan => _$this._kecelakaan;
  set kecelakaan(String? kecelakaan) => _$this._kecelakaan = kecelakaan;

  String? _koordinatKecelakaan;
  String? get koordinatKecelakaan => _$this._koordinatKecelakaan;
  set koordinatKecelakaan(String? koordinatKecelakaan) =>
      _$this._koordinatKecelakaan = koordinatKecelakaan;

  String? _lokasiKecelakaan;
  String? get lokasiKecelakaan => _$this._lokasiKecelakaan;
  set lokasiKecelakaan(String? lokasiKecelakaan) =>
      _$this._lokasiKecelakaan = lokasiKecelakaan;

  String? _pembuat;
  String? get pembuat => _$this._pembuat;
  set pembuat(String? pembuat) => _$this._pembuat = pembuat;

  String? _persetujuan;
  String? get persetujuan => _$this._persetujuan;
  set persetujuan(String? persetujuan) => _$this._persetujuan = persetujuan;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _captionPhoto;
  String? get captionPhoto => _$this._captionPhoto;
  set captionPhoto(String? captionPhoto) => _$this._captionPhoto = captionPhoto;

  bool? _isApproved;
  bool? get isApproved => _$this._isApproved;
  set isApproved(bool? isApproved) => _$this._isApproved = isApproved;

  String? _approvedBy;
  String? get approvedBy => _$this._approvedBy;
  set approvedBy(String? approvedBy) => _$this._approvedBy = approvedBy;

  String? _approvedDate;
  String? get approvedDate => _$this._approvedDate;
  set approvedDate(String? approvedDate) => _$this._approvedDate = approvedDate;

  String? _approvedNotes;
  String? get approvedNotes => _$this._approvedNotes;
  set approvedNotes(String? approvedNotes) =>
      _$this._approvedNotes = approvedNotes;

  String? _rejectedBy;
  String? get rejectedBy => _$this._rejectedBy;
  set rejectedBy(String? rejectedBy) => _$this._rejectedBy = rejectedBy;

  String? _rejectedDate;
  String? get rejectedDate => _$this._rejectedDate;
  set rejectedDate(String? rejectedDate) => _$this._rejectedDate = rejectedDate;

  String? _rejectedReason;
  String? get rejectedReason => _$this._rejectedReason;
  set rejectedReason(String? rejectedReason) =>
      _$this._rejectedReason = rejectedReason;

  String? _rejectedAdditionalComments;
  String? get rejectedAdditionalComments => _$this._rejectedAdditionalComments;
  set rejectedAdditionalComments(String? rejectedAdditionalComments) =>
      _$this._rejectedAdditionalComments = rejectedAdditionalComments;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<Kecelakaan>? _kecelakaanList;
  ListBuilder<Kecelakaan> get kecelakaanList =>
      _$this._kecelakaanList ??= new ListBuilder<Kecelakaan>();
  set kecelakaanList(ListBuilder<Kecelakaan>? kecelakaanList) =>
      _$this._kecelakaanList = kecelakaanList;

  ListBuilder<Cuaca>? _cuacaList;
  ListBuilder<Cuaca> get cuacaList =>
      _$this._cuacaList ??= new ListBuilder<Cuaca>();
  set cuacaList(ListBuilder<Cuaca>? cuacaList) => _$this._cuacaList = cuacaList;

  ReportBuilder() {
    Report._defaults(this);
  }

  ReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _matra = $v.matra;
      _event = $v.event;
      _nama = $v.nama;
      _personil = $v.personil;
      _pengikut = $v.pengikut;
      _tanggal = $v.tanggal;
      _provinsi = $v.provinsi;
      _kabupaten = $v.kabupaten;
      _angkutan = $v.angkutan;
      _unitPelayanan = $v.unitPelayanan;
      _deskripsi = $v.deskripsi;
      _isKejadianMenonjol = $v.isKejadianMenonjol;
      _kejadianMenonjol = $v.kejadianMenonjol;
      _koordinatKejadianMenonjol = $v.koordinatKejadianMenonjol;
      _isKecelakaan = $v.isKecelakaan;
      _kecelakaan = $v.kecelakaan;
      _koordinatKecelakaan = $v.koordinatKecelakaan;
      _lokasiKecelakaan = $v.lokasiKecelakaan;
      _pembuat = $v.pembuat;
      _persetujuan = $v.persetujuan;
      _file = $v.file;
      _photo = $v.photo;
      _captionPhoto = $v.captionPhoto;
      _isApproved = $v.isApproved;
      _approvedBy = $v.approvedBy;
      _approvedDate = $v.approvedDate;
      _approvedNotes = $v.approvedNotes;
      _rejectedBy = $v.rejectedBy;
      _rejectedDate = $v.rejectedDate;
      _rejectedReason = $v.rejectedReason;
      _rejectedAdditionalComments = $v.rejectedAdditionalComments;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _kecelakaanList = $v.kecelakaanList?.toBuilder();
      _cuacaList = $v.cuacaList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Report other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Report;
  }

  @override
  void update(void Function(ReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Report build() => _build();

  _$Report _build() {
    _$Report _$result;
    try {
      _$result = _$v ??
          new _$Report._(
            id: id,
            type: type,
            matra: matra,
            event: event,
            nama: nama,
            personil: personil,
            pengikut: pengikut,
            tanggal: tanggal,
            provinsi: provinsi,
            kabupaten: kabupaten,
            angkutan: angkutan,
            unitPelayanan: unitPelayanan,
            deskripsi: deskripsi,
            isKejadianMenonjol: isKejadianMenonjol,
            kejadianMenonjol: kejadianMenonjol,
            koordinatKejadianMenonjol: koordinatKejadianMenonjol,
            isKecelakaan: isKecelakaan,
            kecelakaan: kecelakaan,
            koordinatKecelakaan: koordinatKecelakaan,
            lokasiKecelakaan: lokasiKecelakaan,
            pembuat: pembuat,
            persetujuan: persetujuan,
            file: file,
            photo: photo,
            captionPhoto: captionPhoto,
            isApproved: isApproved,
            approvedBy: approvedBy,
            approvedDate: approvedDate,
            approvedNotes: approvedNotes,
            rejectedBy: rejectedBy,
            rejectedDate: rejectedDate,
            rejectedReason: rejectedReason,
            rejectedAdditionalComments: rejectedAdditionalComments,
            createdAt: createdAt,
            updatedAt: updatedAt,
            kecelakaanList: _kecelakaanList?.build(),
            cuacaList: _cuacaList?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kecelakaanList';
        _kecelakaanList?.build();
        _$failedField = 'cuacaList';
        _cuacaList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Report', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
