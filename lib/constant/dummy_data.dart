import 'package:strategi_hub_app/modules/jalan/operator/models/operator_model.dart';
import 'package:strategi_hub_app/modules/laporan/models/laporan_model.dart';

class DummyData {
  static List<LaporanModel> listLaporan = [
    LaporanModel(
      title: 'Lap Pusintrans W4 20 Jan 2025 - 26 Jan 2025',
      subtitle: 'Harian PIT  |  Pusintrans  |  27 Jan 2025 09.00 WIB',
      type: 'harian pit',
      status: 0,
    ),
    LaporanModel(
      title:
          'Lap Pusintrans Angkutan Lebaran 2025 27 Mar 2025 - 30 Mar 2025 (H-7 s.d H-4)',
      subtitle: 'Mingguan PIT  |  Pusintrans  |  27 Jan 2025 09.00 WIB',
      type: 'mingguan pit',
      status: 0,
    ),
    LaporanModel(
      title:
          'Lap Pusintrans Angkutan Lebaran 2025 27 Mar 2025 - 29 Mar 2025 (H-7 s.d H-5)',
      subtitle: 'Event PIT  |  Pusintrans  |  26 Maret 2025 09.00 WIB',
      type: 'event pit',
      status: 0,
    ),
    LaporanModel(
      title: 'Lap Pusintrans Merak Bakauheni 27 Maret 2025',
      subtitle: 'Harian PIT  |  Pusintrans  |  27 Jan 2025 09.00 WIB',
      type: 'harian pit',
      status: 1,
    ),
    LaporanModel(
      title:
          'Lap Posko Terpadu Angkutan Lebaran 2025 Tanggal 27 Mar 2025 - 5 Apr 2025 (H-7 s.d H+1)',
      subtitle: 'Event PIT  |  Pusintrans  |  27 Jan 2025 09.00 WIB',
      type: 'event pit',
      status: 1,
    ),
    LaporanModel(
      title:
          'Lap Posko Lapangan Pantauan Lalu Lintas Puncak Tanggal 30 Mar 2025',
      subtitle: 'Mingguan PIT  |  Pusintrans  |  27 Jan 2025 09.00 WIB',
      type: 'mingguan pit',
      status: 2,
    ),
    LaporanModel(
      title: 'Lap Pusintrans W4 20 Jan 2025 - 26 Jan 2025',
      subtitle: 'Event PIT  |  Pusintrans  |  27 Jan 2025 09.00 WIB',
      type: 'event pit',
      status: 1,
    ),
    LaporanModel(
      title: 'Lap Pusintrans W4 20 Jan 2025 - 26 Jan 2025',
      subtitle: 'Harian PIT  |  Pusintrans  |  27 Jan 2025 09.00 WIB',
      type: 'harian pit',
      status: 2,
    ),
    LaporanModel(
      title: 'Lap Pusintrans W4 20 Jan 2025 - 26 Jan 2025',
      subtitle: 'Harian PIT  |  Pusintrans  |  27 Jan 2025 09.00 WIB',
      type: 'harian pit',
      status: 0,
    ),
  ];

  static List<String> listMatra = [
    'Angkutan Jalan',
    'Angkutan Penyeberangan',
    'Angkutan Laut',
    'Angkutan Perkeretaapian',
    'Tol',
    'Jalan Arteri',
  ];

  static List<OperatorModel> listOperator = [
    OperatorModel(
      name: 'PT. Rosalia Indah',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/rosalia.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 45,
    ),
    OperatorModel(
      name: 'PT. Perum Damri',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/damri.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 55,
    ),
    OperatorModel(
      name: 'PT. Karina',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/karina.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 30,
    ),
    OperatorModel(
      name: 'PT. PO. Sumber Alam',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/sumber-alam.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 20,
    ),
  ];

  static List<OperatorModel> listLautOperator = [
    OperatorModel(
      name: 'PT. PELNI',
      cs: 'Chandra Daninda',
      image: 'assets/images/rosalia.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 45,
    ),
    OperatorModel(
      name: 'PT. ASDP Indonesia Ferry',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/damri.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 55,
    ),
    OperatorModel(
      name: 'PT. Pelindo',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/karina.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 30,
    ),
    OperatorModel(
      name: 'PT. Meratus Line',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/sumber-alam.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 20,
    ),
  ];

  static List<OperatorModel> listUdaraOperator = [
    OperatorModel(
      name: 'Garuda Indonesia',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/garuda.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 45,
    ),
    OperatorModel(
      name: 'Lion Air',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/lion.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 55,
    ),
    OperatorModel(
      name: 'Sriwijaya Air',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/sriwijaya.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 30,
    ),
    OperatorModel(
      name: 'Air Asia Indonesia',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/airasia.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 20,
    ),
    OperatorModel(
      name: 'Citilink',
      cs: 'Andrea Jujitsu',
      image: 'assets/images/sumber-alam.png',
      transportCount: 46,
      userCount: 356789,
      phone: '082285522870',
      otp: 20,
    ),
  ];
}
