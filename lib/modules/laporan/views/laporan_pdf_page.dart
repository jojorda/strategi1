import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/laporan_pdf_controller.dart';

class LaporanPdfPage extends StatelessWidget {
  static String routeName = '/pdf-laporan-page';
  const LaporanPdfPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
        final screenWidth = MediaQuery.of(context).size.width;
        final isSmallScreen = screenHeight < 700 || screenWidth < 380;
        final isUnfolded = screenWidth > 600;

    LaporanPdfController controller = Get.put(LaporanPdfController());
    return BaseScaffold(
      title: 'LAPORAN',
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Sizes.s20, vertical: Sizes.s10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.s4),
                  color: AppColors.lightGreyColor.withValues(alpha: 0.6)),
              padding: EdgeInsets.symmetric(
                  horizontal: Sizes.s10, vertical: Sizes.s6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.savePdf();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.s4),
                          color: AppColors.blackColor.withValues(alpha: 0.2)),
                      padding: EdgeInsets.all(Sizes.s4),
                      child: Center(
                          child: SvgPicture.asset(
                        AssetConstant.download,
                        color: AppColors.whiteColor,
                        height: isUnfolded ? Sizes.s10 : Sizes.s18,
                        width: isUnfolded ? Sizes.s10 : Sizes.s18,
                      )),
                    ),
                  ),
                  SizedBox(width: Sizes.s10),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.s4),
                          color: AppColors.blackColor.withValues(alpha: 0.2)),
                      padding: EdgeInsets.all(Sizes.s4),
                      child: Center(
                          child: SvgPicture.asset(
                        AssetConstant.scan,
                        color: AppColors.whiteColor,
                        height: Sizes.s18,
                        width: Sizes.s18,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(() {
                if (controller.filePath.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                }
                return SizedBox(
                  width: Get.width,
                  height: 300,
                  child: PDFView(
                    filePath: controller.filePath.value,
                    enableSwipe: true,
                    swipeHorizontal: false,
                    autoSpacing: true,
                    pageFling: true,
                    onRender: (pages) {
                      controller.setTotalPages(pages ?? 0);
                    },
                    onViewCreated: (PDFViewController c) {
                      controller.setPdfViewController(c);
                    },
                    onPageChanged: (page, _) {
                      controller.setCurrentPage(page ?? 0);
                    },
                    onError: (error) {
                      controller.errorMessage.value = error.toString();
                    },
                    onPageError: (page, error) {
                      controller.errorMessage.value =
                          "Error on page $page: $error";
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
