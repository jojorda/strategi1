import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/modules/cctv/controllers/detail_cctv_controller.dart';

class DetailCctvPage extends StatelessWidget {
  static String routeName = '/detail-cctv-page';
  const DetailCctvPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DetailCctvController());
    return SizedBox(
      width: Get.width,
      child: Image.asset(
        'assets/images/cctv-sample2.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
