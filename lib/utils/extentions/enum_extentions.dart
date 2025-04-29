import 'package:get/get.dart';

extension EnumFormatter on Enum {
  String get formattedName {
    switch (name) {
      case 'mingguanPit':
        return 'Mingguan PIT';
      case 'eventPit':
        return 'Event PIT';
      case 'fokusPit':
        return 'Fokus PIT';
      case 'poskoTerpadu':
        return 'Posko Terpadu';
      case 'poskoLapangan':
        return 'Posko Lapangan';
      case 'piketIm':
        return 'Piket IM';
      case 'kinerjaPelaporan':
        return 'Kinerja Pelaporan';
      case 'boothPoskoTerpadu':
        return 'Booth Posko Terpadu';
      case 'boothPoskoLapangan':
        return 'Booth Posko Lapangan';
      case 'poskoLain':
        return 'Posko Lain';
      case 'laporan2Jam':
        return 'Laporan 2 Jam';
      case 'laporanShift':
        return 'Laporan Shift';
      case 'laporanDaily':
        return 'Laporan Daily';
      case 'laporanWeekly':
        return 'Laporan Weekly';
      case 'laporanData':
        return 'Laporan Data';
      case 'thirtySecond':
        return '30 Second';
      case 'cctv':
        return 'CCTV';
      case 'od':
        return 'OD';
      case 'kejadianMenonjol':
        return 'Kejadian Menonjol';
      case 'harianPit':
        return 'Harian PIT';
      case 'lakaLantas':
        return 'Laka Lantas';
      default:
        return name.capitalizeFirst ?? '';
    }
  }
}
