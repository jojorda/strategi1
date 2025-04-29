import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/cctv/views/cctv_player.dart';
import 'package:strategi_hub_app/modules/thirty_second/controller/thirty_second_controller.dart';

class ThirtySecondPage extends GetView<ThirtySecondController> {
  const ThirtySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.thirtySeconds.isNotEmpty
          ? ListView.separated(
              itemBuilder: (context, index) {
                final thirtySecond = controller.thirtySeconds[index];
                return CctvPlayer(
                    streamUrl: thirtySecond.streamUrl ?? '',
                    isEmbed: true,
                    title: thirtySecond.namaLokasi,
                    description: thirtySecond.namaCctv,
                    status: thirtySecond.status?.name ?? '');
              },
              separatorBuilder: (context, index) => SizedBox(height: Sizes.s12),
              itemCount: controller.thirtySeconds.length,
            )
          : Center(
              child: Text('No data available'),
            ),
    );
  }
}
