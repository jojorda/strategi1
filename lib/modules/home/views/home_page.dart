import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/custom_image_network.dart';
import 'package:strategi_hub_app/components/forms/custom_dropdown.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/constant/asset_constant.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/constant.dart';
import 'package:strategi_hub_app/constant/enum/jalan_enum.dart';
import 'package:strategi_hub_app/constant/enum/menu_enum.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/helpers/bottom_sheet_helpers.dart';
import 'package:strategi_hub_app/helpers/custom_date_picker.dart';
import 'package:strategi_hub_app/modules/home/controllers/home_controller.dart';
import 'package:strategi_hub_app/modules/home/views/berita_page.dart';
import 'package:strategi_hub_app/modules/main_menu/models/main_menu_argument.dart';
import 'package:strategi_hub_app/modules/main_menu/views/main_menu_page.dart';
import 'package:strategi_hub_app/modules/udara/agregat/view/udara_agregat_page.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';
import 'package:strategi_hub_app/utils/permission.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:strategi_hub_app/modules/main_menu/controllers/main_menu_controller.dart';
import 'package:strategi_hub_app/modules/komparasi/views/komparasi_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/home";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
    return Scaffold(
      body: SingleChildScrollView(
        padding:
            EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s12),
        child: Column(
          children: [
            if (hasPermission(Permission.berandaNews))
              Obx(() {
                final news = controller.selectedNews.value;

                if (news == null) {
                  return SizedBox(
                    // height: 200,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                return Column(
                  children: [
                    SizedBox(
                      // height: isUnfolded ? 250 : 200,
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                          height: isUnfolded ? 250 : 200,
                          aspectRatio: isUnfolded ? 2.0 : 22 / 13,
                          viewportFraction: isUnfolded ? 0.68 : 0.95,
                          // initialPage: 0,
                          // enableInfiniteScroll: true,
                          // reverse: false,
                          // autoPlay: true,
                          // autoPlayInterval: Duration(seconds: 5),
                          // autoPlayAnimationDuration: Duration(milliseconds: 800),
                          // autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          // enlargeFactor: isUnfolded ? 0.01 : 0.5,
                          onPageChanged: (index, reason) {
                            controller.selectedNews.value =
                                controller.news[index];
                          },
                          scrollDirection: Axis.horizontal,
                        ),
                        itemCount: controller.news.length,
                        itemBuilder: (context, index, realIndex) {
                          final currentNews = controller.news[index];
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: Sizes.s8),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(
                                  () => BeritaPage(
                                    news: currentNews,
                                    imageUrl: currentNews.image ?? "",
                                    title: currentNews.title ?? "",
                                    date: currentNews.pubDate ?? "",
                                    author: currentNews.author,
                                    source: currentNews.link,
                                    description: currentNews.description,
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(Sizes.s8),
                                child: Stack(
                                  children: [
                                    AspectRatio(
                                      aspectRatio:
                                          isUnfolded ? 28 / 15 : 22 / 13,
                                      child: CustomImageNetwork(
                                        path: currentNews.image ?? "",
                                        width: 1000.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: Sizes.s0,
                                      right: Sizes.s0,
                                      left: Sizes.s0,
                                      child: Container(
                                        padding: EdgeInsets.all(Sizes.s12),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.transparent,
                                              Colors.black.withOpacity(0.7),
                                            ],
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              currentNews.title ?? "-",
                                              style: Get.textTheme.titleMedium!
                                                  .copyWith(
                                                color: Colors.white,
                                                fontSize: isUnfolded
                                                    ? FontSizes.s8
                                                    : isSmallScreen ? FontSizes.s6 : FontSizes.s11,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(height: Sizes.s8),
                                            Row(
                                              children: [
                                                Icon(
                                                  IconlyLight.time_circle,
                                                  size: isUnfolded
                                                      ? FontSizes.s8
                                                      : FontSizes.s9,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(width: Sizes.s4),
                                                Text(
                                                  currentNews.pubDate ?? "",
                                                  style: Get
                                                      .textTheme.bodySmall!
                                                      .copyWith(
                                                    color: Colors.white,
                                                    fontSize: isUnfolded
                                                        ? FontSizes.s8
                                                        : FontSizes.s9,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Sizes.s8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(
                          () => Row(
                            children: List.generate(
                              controller.news.length > 0
                                  ? controller.news.length
                                  : 1,
                              (index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  height: 6,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: controller.news.indexOf(
                                                controller.selectedNews.value ??
                                                    controller.news.first) ==
                                            index
                                        ? Colors.blue
                                        : Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }),
            SizedBox(height: Sizes.s12),
            if (customPermissionChecks((local) => local.any((element) =>
                element.startsWith('Beranda_') && element != 'Beranda_News')))
              Obx(
                () {
                  return SizedBox(
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(
                                  () => Text(
                                    controller.titleInfo[
                                        controller.currentPageInfo.value],
                                    style: Get.textTheme.bodySmall!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 12)),
                                  ),
                                ),
                                Obx(
                                  () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        controller.isRutin.value
                                            ? "Rutin"
                                            : "Seasonal",
                                        // style: Get.textTheme.labelMedium,
                                        style: Get.textTheme.bodySmall!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                isUnfolded ? 14 : (isSmallScreen ? 10 : 12)),
                                      ),
                                      Container(
                                        height: Sizes.s17,
                                        width: Sizes.s30,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: Sizes.s4),
                                        alignment: Alignment.center,
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Obx(() => CupertinoSwitch(
                                                value: controller.isRutin.value,
                                                onChanged: (val) {
                                                  controller.isRutin.value =
                                                      val;
                                                },
                                                activeTrackColor:
                                                    AppColors.gradientEndColor,
                                                inactiveTrackColor: Colors.grey,
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: Sizes.s6),
                            Obx(() {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      controller.selectedRange.value.isNotEmpty
                                          ? "${DateFormat('dd MMM yyy').format(controller.selectedRange.value[0])} - ${DateFormat('dd MMM yyy').format(controller.selectedRange.value[1])}"
                                          : "-",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      // style: Get.textTheme.labelMedium,
                                      style: Get.textTheme.bodySmall!.copyWith(
                                          // fontWeight: FontWeight.bold,
                                          fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 12)),
                                    ),
                                  ),
                                  Flexible(
                                    child: GestureDetector(
                                      onTap: () {
                                        if (!controller.isRutin.value) {
                                          seasonalAction(
                                            controller.eventList.value ?? [],
                                            controller.currentEvent.value,
                                            (type) {
                                              controller.updateEventType(type);
                                            },
                                            (event) {
                                              controller.currentEvent.value =
                                                  event;
                                            },
                                            controller,
                                          );
                                        } else {
                                          PickDateType pickDateType =
                                              PickDateType.week;
                                          // int maxRange = 0;
                                          switch (
                                              controller.selectedFilter.value) {
                                            case 0:
                                              pickDateType = PickDateType.week;
                                              // maxRange = 7;
                                              break;
                                            case 1:
                                              pickDateType = PickDateType.month;
                                              // maxRange = 31;
                                              break;
                                            case 2:
                                              pickDateType = PickDateType.year;
                                              // maxRange = 365;
                                              break;
                                            default:
                                              pickDateType = PickDateType.year;
                                              // maxRange = 365;
                                              break;
                                          }
                                          CustomDatePicker.selectDate(
                                            type: pickDateType,
                                            // maxRange: maxRange,
                                            initialDates: controller
                                                .selectedRoutineRange.value,
                                            onSelectedDate: (p0, p1) {
                                              controller.updateFilterDate(
                                                  p0, p1);
                                            },
                                          );
                                        }
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: Sizes.s8,
                                            vertical: Sizes.s4),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(Sizes.s4),
                                          border: Border.all(
                                            color: Get.theme.colorScheme
                                                .inverseSurface,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Flexible(
                                              child: Text(
                                                controller.isRutin.value
                                                    ? "Rentang Waktu"
                                                    : controller.currentEvent
                                                            .value?.nama ??
                                                        '-',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: Get
                                                    .textTheme.labelMedium!
                                                    .copyWith(
                                                        fontSize: isUnfolded
                                                            ? 14
                                                            : (isSmallScreen
                                                                ? 11
                                                                : FontSizes
                                                                    .s10)),
                                              ),
                                            ),
                                            SizedBox(width: Sizes.s6),
                                            Icon(
                                              IconlyLight.calendar,
                                              size: isUnfolded
                                                  ? 14 : (isSmallScreen ? 12 : 14),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }),
                            SizedBox(height: Sizes.s10),
                            Row(
                              children: [
                                // GestureDetector(
                                //   onTap: () =>
                                //       controller.pageController.previousPage(
                                //     duration: Duration(milliseconds: 300),
                                //     curve: Curves.linear,
                                //   ),
                                //   child: Icon(IconlyLight.arrow_left_2),
                                // ),
                                Expanded(
                                  child: SizedBox(
                                      height: isSmallScreen
                                          ? Get.height * 0.31
                                          : Get.height * 0.24,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: PageView(
                                              controller:
                                                  controller.pageController,
                                              onPageChanged: (value) {
                                                controller.currentPageInfo
                                                    .value = value;
                                              },
                                              children: pageContent(),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                                // GestureDetector(
                                //   onTap: () =>
                                //       controller.pageController.nextPage(
                                //     duration: Duration(milliseconds: 300),
                                //     curve: Curves.linear,
                                //   ),
                                //   child: Icon(IconlyLight.arrow_right_2),
                                // ),
                              ],
                            ),
                            FilterDate(),
                            SizedBox(height: 3),
                            Obx(() => Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    5,
                                    (index) => Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 2),
                                      height: 5,
                                      width: 5,
                                      decoration: BoxDecoration(
                                        color:
                                            controller.currentPageInfo.value ==
                                                    index
                                                ? Colors.blue
                                                : Colors.grey,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Positioned.fill(
                          child: Visibility(
                            visible: controller.isSummaryLoading.value,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              onTap: () {},
                              child: Container(
                                color: Colors.white.withAlpha(70),
                                child: BouncingLoader(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            SizedBox(height: Sizes.s3),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: Sizes.s150,
                        child: PageView(
                          controller: controller.pageMainMenuController,
                          onPageChanged: (value) {
                            controller.currentMainMenuPageIndex.value = value;
                          },
                          children: [
                            MainMenu1(),
                            MainMenu2(),
                          ],
                        ),
                      ),
                      SizedBox(height: Sizes.s5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(
                            () => Row(
                              children: List.generate(2, (index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  height: 6,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: controller.currentMainMenuPageIndex
                                                .value ==
                                            index
                                        ? Colors.blue
                                        : Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
            // Row(
            //   children: [
            //     // GestureDetector(
            //     //   onTap: () => controller.pageMainMenuController.previousPage(
            //     //     duration: Duration(milliseconds: 300),
            //     //     curve: Curves.linear,
            //     //   ),
            //     //   child: Icon(IconlyLight.arrow_left_2),
            //     // ),
            //     Expanded(
            //       child: SizedBox(
            //         height: Sizes.s150,
            //         child: PageView(
            //           controller: controller.pageMainMenuController,
            //           children: [
            //             MainMenu1(),
            //             MainMenu2(),
            //           ],
            //         ),
            //       ),

            //     ),

            //     // GestureDetector(
            //     //   onTap: () => controller.pageMainMenuController.nextPage(
            //     //     duration: Duration(milliseconds: 300),
            //     //     curve: Curves.linear,
            //     //   ),
            //     //   child: Icon(IconlyLight.arrow_right_2),
            //     // ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }

  List<Widget> pageContent() {
    return [
      if (hasPermission(Permission.berandaMobilitasPenumpang)) PenumpangData(),
      if (hasPermission(Permission.berandaMobilitasSarana)) SaranaData(),
      if (hasPermission(Permission.berandaMobilitasJaringan)) JaringanData(),
      if (hasPermission(Permission.berandaPelayaranDomestikInternational))
        PelayaranData(),
      if (hasPermission(Permission.berandaPenerbanganDomestikInternational))
        PenerbanganData()
    ];
  }
}

void seasonalAction(
    List<Event> listEvent,
    Event? selectedEvent,
    void Function(String) selectType,
    void Function(Event) onSelected,
    HomeController controller) {
  final screenHeight = MediaQuery.of(Get.context!).size.height;
  final screenWidth = MediaQuery.of(Get.context!).size.width;
  final isSmallScreen = screenHeight < 700 || screenWidth < 380;
  final isUnfolded = screenWidth > 600;
  BottomSheetHelpers.showCustomBottomSheet(
    backgroundColor: Color(0xFF0D1320),
    isScrollControlled: false,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.s16, vertical: Sizes.s12),
      child: Column(
        children: [
          Text(
            "Daftar Nama Event",
            style: Get.textTheme.labelLarge!.copyWith(
              color: AppColors.lightGreyColor,
              fontSize: isUnfolded ? 12 : (isSmallScreen ? 12 : 12),
            ),
          ),
          SizedBox(height: Sizes.s16),
          CustomDropdown(
            data: ["Semua Event", "Nataru", "Angkutan Lebaran"],
            hint: "Semua Event",
            style: Get.textTheme.bodySmall!.copyWith(
              fontSize: isUnfolded ? 12 : (isSmallScreen ? 10 : 12),
            ),
            onChanged: (value) {
              selectType.call(value ?? '');
            },
            onSaved: (value) {},
            isDarkMode: true,
          ),
          SizedBox(height: Sizes.s12),
          Obx(
            () {
              final type = controller.eventType.value;
              final data = (type == "Semua Event" || type.isEmpty)
                  ? listEvent
                  : listEvent.where((e) => e.tipe == type).toList();
              return ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final item = data[index];
                  return InkWell(
                    onTap: () {
                      onSelected.call(item);
                      Get.back();
                    },
                    child: OptionSeasonalItem(
                      isSelected: item.id == controller.currentEvent.value?.id,
                      title: item.nama,
                      desc: item.subNama ?? '',
                      date:
                          "${item.tanggalMulai != null ? DateFormat('dd MMM yyy').format(item.tanggalMulai!) : '-'} - ${item.tanggalSelesai != null ? DateFormat('dd MMM yyy').format(item.tanggalSelesai!) : '-'}",
                      color: AppColors.primaryColor,
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: Sizes.s12);
                },
                itemCount: data.length,
              );
            },
          )
        ],
      ),
    ),
  );
}

class OptionSeasonalItem extends StatelessWidget {
  const OptionSeasonalItem({
    super.key,
    required this.title,
    required this.date,
    required this.desc,
    required this.color,
    this.isSelected = false,
  });

  final String title;
  final String date;
  final String desc;
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Container(
      width: Get.width,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Get.textTheme.bodyMedium!.copyWith(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500,
                  fontSize: isUnfolded ? 12 : (isSmallScreen ? 10 : 12),
                ),
              ),
              Text(
                date,
                style: Get.textTheme.bodySmall!.copyWith(
                  color: Color(0xFF7F7979),
                  fontSize: isUnfolded ? 12 : (isSmallScreen ? 10 : 12),
                ),
              ),
              SizedBox(height: Sizes.s6),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.s4,
                  vertical: Sizes.s2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.s6),
                  color: desc.isNotEmpty ? color : Colors.transparent,
                ),
                child: Text(
                  desc,
                  style: Get.textTheme.bodySmall!.copyWith(
                    color: AppColors.whiteColor,
                    fontSize: isUnfolded ? 12 : (isSmallScreen ? 10 : 12),
                  ),
                ),
              )
            ],
          ),
          Visibility(
            visible: isSelected,
            child: Icon(
              Icons.check_circle,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

class MainMenu2 extends StatelessWidget {
  const MainMenu2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final MainMenuController controller2 = Get.find();
    return Padding(
      padding: EdgeInsets.all(Sizes.s2),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                MainMenuButton(
                  iconPath: AssetConstant.busIcon,
                  label: "Angkutan Jalan",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    Get.toNamed(MainMenuPage.routeName,
                        arguments: MainMenuArgument(
                            menuEnum: MenuEnum.jalan,
                            jalanEnum: JalanEnum.agregat));
                  },
                ),
                SizedBox(width: Sizes.s6),
                MainMenuButton(
                  iconPath: AssetConstant.boatIcon,
                  label: "Angkutan SDP",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.penyeberangan);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.penyeberangan);
                    Get.toNamed(MainMenuPage.routeName,
                        arguments: MainMenuArgument(
                          menuEnum: MenuEnum.penyeberangan,
                        ));
                  },
                ),
                SizedBox(width: Sizes.s6),
                MainMenuButton(
                  iconPath: AssetConstant.shipIcon,
                  label: "Angkutan Laut",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.laut);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.laut);
                    Get.toNamed(MainMenuPage.routeName,
                        arguments: MainMenuArgument(
                          menuEnum: MenuEnum.laut,
                        ));
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: Sizes.s6),
          Expanded(
            child: Row(
              children: [
                MainMenuButton(
                  iconPath: AssetConstant.planeIcon,
                  label: "Angkutan Udara",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.udara);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.udara);
                    Get.toNamed(MainMenuPage.routeName,
                        arguments: MainMenuArgument(
                          menuEnum: MenuEnum.udara,
                        ));
                  },
                ),
                SizedBox(width: Sizes.s6),
                MainMenuButton(
                  iconPath: AssetConstant.trainIcon,
                  label: "Angkutan Perkeretaapian",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.perkeretaapian);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.perkeretaapian);
                    Get.toNamed(MainMenuPage.routeName,
                        arguments: MainMenuArgument(
                          menuEnum: MenuEnum.perkeretaapian,
                        ));
                  },
                ),
                SizedBox(width: Sizes.s6),
                MainMenuButton(
                  iconPath: AssetConstant.streamingIcon,
                  label: "Pantauan Live Streaming",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.thirtySecond);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.thirtySecond);
                    Get.toNamed(MainMenuPage.routeName,
                        arguments: MainMenuArgument(
                          menuEnum: MenuEnum.thirtySecond,
                        ));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MainMenu1 extends StatelessWidget {
  const MainMenu1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final MainMenuController controller2 = Get.find();
    final MenuEnumValue enumMenu;
    return Padding(
      padding: EdgeInsets.all(Sizes.s4),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                MainMenuButton(
                  iconPath: AssetConstant.fokusIcon,
                  label: "Pantauan Fokus",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.fokus);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.fokus);
                    Get.toNamed(MainMenuPage.routeName,
                        arguments: MainMenuArgument(menuEnum: MenuEnum.fokus));
                  },
                ),
                SizedBox(width: Sizes.s6),
                MainMenuButton(
                  iconPath: AssetConstant.wilayahIcon,
                  label: "Wilayah",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    Get.toNamed(
                      MainMenuPage.routeName,
                      arguments: MainMenuArgument(
                        menuEnum: MenuEnum.jalan,
                        jalanEnum: JalanEnum.wilayah,
                      ),
                      preventDuplicates: false,
                    );
                  },
                ),
                SizedBox(width: Sizes.s6),
                MainMenuButton(
                  iconPath: AssetConstant.destinationIcon,
                  label: "Origin Destination",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    Get.toNamed(
                      MainMenuPage.routeName,
                      arguments: MainMenuArgument(
                        menuEnum: MenuEnum.jalan,
                        jalanEnum: JalanEnum.od,
                      ),
                      preventDuplicates: false,
                    );
                  },
                ),
                SizedBox(width: Sizes.s6),
                MainMenuButton(
                  iconPath: AssetConstant.operatorIcon,
                  label: "Operator",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    Get.toNamed(
                      MainMenuPage.routeName,
                      arguments: MainMenuArgument(
                        menuEnum: MenuEnum.jalan,
                        jalanEnum: JalanEnum.operator,
                      ),
                      preventDuplicates: false,
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: Sizes.s6),
          Expanded(
            child: Row(
              children: [
                MainMenuButton(
                  iconPath: AssetConstant.kecelakaanIcon,
                  label: "Kecelakaan",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    Get.toNamed(
                      MainMenuPage.routeName,
                      arguments: MainMenuArgument(
                        menuEnum: MenuEnum.jalan,
                        jalanEnum: JalanEnum.kecelakaan,
                      ),
                      preventDuplicates: false,
                    );
                  },
                ),
                SizedBox(width: Sizes.s6),
                MainMenuButton(
                  iconPath: AssetConstant.kejadianIcon,
                  label: "Kejadian Menonjol",
                  onTap: () {
                    controller2.selectedIndex.value =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    controller2.tabController.index =
                        MenuEnumValue.toIndex(MenuEnum.jalan);
                    Get.toNamed(
                      MainMenuPage.routeName,
                      arguments: MainMenuArgument(
                        menuEnum: MenuEnum.jalan,
                        jalanEnum: JalanEnum.kejadianMenonjol,
                      ),
                      preventDuplicates: false,
                    );
                  },
                ),
                SizedBox(width: Sizes.s6),
                MainMenuButton(
                    iconPath: AssetConstant.komparasiIcon,
                    label: "Komparasi",
                    onTap: () {
                      controller2.selectedIndex.value =
                          MenuEnumValue.toIndex(MenuEnum.komparasi);
                      controller2.tabController.index =
                          MenuEnumValue.toIndex(MenuEnum.komparasi);
                      Get.toNamed(MainMenuPage.routeName,
                          arguments:
                              MainMenuArgument(menuEnum: MenuEnum.komparasi));
                    }),
                SizedBox(width: Sizes.s6),
                MainMenuButton(
                    iconPath: AssetConstant.cctv2Icon,
                    label: "Pantauan CCTV",
                    onTap: () {
                      controller2.selectedIndex.value =
                          MenuEnumValue.toIndex(MenuEnum.cctv);
                      controller2.tabController.index =
                          MenuEnumValue.toIndex(MenuEnum.cctv);
                      Get.toNamed(MainMenuPage.routeName,
                          arguments: MainMenuArgument(menuEnum: MenuEnum.cctv));
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilterDate extends StatelessWidget {
  const FilterDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    return Obx(
      () => controller.isRutin.value
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Obx(
                      () => SizedBox(
                        height: Sizes.s20,
                        width: Sizes.s20,
                        child: Transform.scale(
                          scale: 0.8,
                          child: Radio(
                            fillColor: MaterialStateColor.resolveWith(
                              (states) {
                                if (states.contains(MaterialState.selected)) {
                                  return AppColors.primaryColor;
                                }
                                return AppColors.greyColor;
                              },
                            ),
                            value: 0,
                            groupValue: controller.selectedFilter.value,
                            onChanged: (value) {
                              controller.selectedFilter.value = value as int;
                            },
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.selectedFilter.value = 0;
                      },
                      child: Text(
                        "Harian",
                        // style: Get.textTheme.labelMedium,
                        style: Get.textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: isSmallScreen ? 12 : 10),
                      ),
                    ),
                    SizedBox(width: Sizes.s12),
                    Obx(
                      () => SizedBox(
                        height: Sizes.s20,
                        width: Sizes.s20,
                        child: Transform.scale(
                          scale: 0.8,
                          child: Radio(
                            fillColor: MaterialStateColor.resolveWith(
                              (states) {
                                if (states.contains(MaterialState.selected)) {
                                  return AppColors.primaryColor;
                                }
                                return AppColors.greyColor;
                              },
                            ),
                            value: 1,
                            groupValue: controller.selectedFilter.value,
                            onChanged: (value) {
                              controller.selectedFilter.value = value as int;
                            },
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.selectedFilter.value = 1;
                      },
                      child: Text(
                        "Mingguan",
                        // style: Get.textTheme.labelMedium,
                        style: Get.textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: isSmallScreen ? 12 : 10),
                      ),
                    ),
                    SizedBox(width: Sizes.s12),
                    Obx(
                      () => SizedBox(
                        height: Sizes.s20,
                        width: Sizes.s20,
                        child: Transform.scale(
                          scale: 0.8,
                          child: Radio(
                            fillColor: MaterialStateColor.resolveWith(
                              (states) {
                                if (states.contains(MaterialState.selected)) {
                                  return AppColors.primaryColor;
                                }
                                return AppColors.greyColor;
                              },
                            ),
                            value: 2,
                            groupValue: controller.selectedFilter.value,
                            onChanged: (value) {
                              controller.selectedFilter.value = value as int;
                            },
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.selectedFilter.value = 2;
                      },
                      child: Text(
                        "Bulanan",
                        // style: Get.textTheme.labelMedium,
                        style: Get.textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: isSmallScreen ? 12 : 10),
                      ),
                    ),
                    SizedBox(width: Sizes.s12),
                    Obx(
                      () => SizedBox(
                        height: Sizes.s20,
                        width: Sizes.s20,
                        child: Transform.scale(
                          scale: 0.8,
                          child: Radio(
                            fillColor: MaterialStateColor.resolveWith(
                              (states) {
                                if (states.contains(MaterialState.selected)) {
                                  return AppColors.primaryColor;
                                }
                                return AppColors.greyColor;
                              },
                            ),
                            value: 3,
                            groupValue: controller.selectedFilter.value,
                            onChanged: (value) {
                              controller.selectedFilter.value = value as int;
                            },
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.selectedFilter.value = 3;
                      },
                      child: Text(
                        "Tahunan",
                        // style: Get.textTheme.labelMedium,
                        style: Get.textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: isSmallScreen ? 12 : 10),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : SizedBox(height: Sizes.s10),
    );
  }
}

class PenerbanganData extends GetView<HomeController> {
  const PenerbanganData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final flight = controller.currentFlight.value;
      if (flight == null) {
        return SizedBox(
          height: 200,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
      final screenHeight = MediaQuery.of(context).size.height;
      final screenWidth = MediaQuery.of(context).size.width;
      final isSmallScreen = screenHeight < 700 || screenWidth < 380;
      final isUnfolded = screenWidth > 600;

      return Padding(
        padding: EdgeInsets.all(Sizes.s4),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AssetConstant.peopleIcon,
                  height: isUnfolded ? Sizes.s10 : (isSmallScreen ? Sizes.s14 : Sizes.s16),
                  width: isUnfolded ? Sizes.s10 : (isSmallScreen ? Sizes.s14 : Sizes.s16),
                ),
                SizedBox(width: Sizes.s4),
                Text(
                  "Penumpang",
                  style: Get.textTheme.labelMedium!.copyWith(
                    fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : FontSizes.s14),
                  ),
                )
              ],
            ),
            SizedBox(height: Sizes.s4),
            Expanded(
              child: Row(
                children: [
                  InfoCardV2(
                    value: flight.passengers?.domestic
                            ?.toDotSeparated(wrap: false) ??
                        '0',
                    desc: "Domestik",
                  ),
                  SizedBox(width: Sizes.s6),
                  InfoCardV2(
                    value: flight.passengers?.outbound
                            ?.toDotSeparated(wrap: false) ??
                        '0',
                    desc: "Int - Outbound",
                  ),
                  SizedBox(width: Sizes.s6),
                  InfoCardV2(
                    value: flight.passengers?.inbound
                            ?.toDotSeparated(wrap: false) ??
                        '0',
                    desc: "Int - Inbound",
                  ),
                ],
              ),
            ),
            SizedBox(height: Sizes.s6),
            Row(
              children: [
                SvgPicture.asset(
                  AssetConstant.planeIcon,
                  height: isUnfolded ? Sizes.s10 : (isSmallScreen ? Sizes.s14 : Sizes.s16),
                  width: isUnfolded ? Sizes.s10 : (isSmallScreen ? Sizes.s14 : Sizes.s16),
                ),
                SizedBox(width: Sizes.s4),
                Text(
                  "Pesawat",
                  style: Get.textTheme.labelMedium!.copyWith(
                    fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : FontSizes.s14),
                  ),
                )
              ],
            ),
            SizedBox(height: Sizes.s4),
            Expanded(
              child: Row(
                children: [
                  InfoCardV2(
                    value: flight.aircraft?.domestic
                            ?.toDotSeparated(wrap: false) ??
                        '0',
                    desc: "Domestik",
                  ),
                  SizedBox(width: Sizes.s6),
                  InfoCardV2(
                    value: flight.aircraft?.outbound
                            ?.toDotSeparated(wrap: false) ??
                        '0',
                    desc: "Int - Outbound",
                  ),
                  SizedBox(width: Sizes.s6),
                  InfoCardV2(
                    value:
                        flight.aircraft?.inbound?.toDotSeparated(wrap: false) ??
                            '0',
                    desc: "Int - Inbound",
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

class PelayaranData extends GetView<HomeController> {
  const PelayaranData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final sailing = controller.currentSailing.value;
      if (sailing == null) {
        return SizedBox(
          height: 200,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
      final screenHeight = MediaQuery.of(context).size.height;
      final screenWidth = MediaQuery.of(context).size.width;
      final isSmallScreen = screenHeight < 700 || screenWidth < 380;
      final isUnfolded = screenWidth > 600;

      return Padding(
        padding: EdgeInsets.all(Sizes.s4),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AssetConstant.peopleIcon,
                  height: isUnfolded ? Sizes.s10 : (isSmallScreen ? Sizes.s14 : Sizes.s16),
                  width: isUnfolded ? Sizes.s10 : (isSmallScreen ? Sizes.s14 : Sizes.s16),
                ),
                SizedBox(width: Sizes.s4),
                Text(
                  "Penumpang",
                  style: Get.textTheme.labelMedium!.copyWith(
                    fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : FontSizes.s14),
                  ),
                )
              ],
            ),
            SizedBox(height: isUnfolded ? Sizes.s4 : (isSmallScreen ? Sizes.s2 : Sizes.s2)),
            Expanded(
              child: Row(
                children: [
                  InfoCardV2(
                    value: sailing.passengers?.domestic
                            ?.toDotSeparated(wrap: false) ??
                        '0',
                    desc: "Domestik",
                  ),
                  SizedBox(width: Sizes.s6),
                  InfoCardV2(
                    value: sailing.passengers?.outbound
                            ?.toDotSeparated(wrap: false) ??
                        '0',
                    desc: "Int - Outbound",
                  ),
                  SizedBox(width: Sizes.s6),
                  InfoCardV2(
                    value: sailing.passengers?.inbound
                            ?.toDotSeparated(wrap: false) ??
                        '0',
                    desc: "Int - Inbound",
                  ),
                ],
              ),
            ),
            SizedBox(height: isUnfolded ? Sizes.s6 : (isSmallScreen ? Sizes.s2 : Sizes.s2)),
            Row(
              children: [
                SvgPicture.asset(
                  AssetConstant.shipIcon,
                  height: isUnfolded ? Sizes.s10 : (isSmallScreen ? Sizes.s14 : Sizes.s16),
                  width: isUnfolded ? Sizes.s10 : (isSmallScreen ? Sizes.s14 : Sizes.s16),
                ),
                SizedBox(width: Sizes.s4),
                Text(
                  "Kapal",
                  style: Get.textTheme.labelMedium!.copyWith(
                    fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : FontSizes.s14),
                  ),
                )
              ],
            ),
            SizedBox(height: isUnfolded ? Sizes.s4 : (isSmallScreen ? 2: Sizes.s2)),
            Expanded(
              child: Row(
                children: [
                  InfoCardV2(
                    value:
                        sailing.ship?.domestic?.toDotSeparated(wrap: false) ??
                            '0',
                    desc: "Domestik",
                  ),
                  SizedBox(width: Sizes.s6),
                  InfoCardV2(
                    value:
                        sailing.ship?.outbound?.toDotSeparated(wrap: false) ??
                            '0',
                    desc: "Int - Outbound",
                  ),
                  SizedBox(width: Sizes.s6),
                  InfoCardV2(
                    value: sailing.ship?.inbound?.toDotSeparated(wrap: false) ??
                        '0',
                    desc: "Int - Inbound",
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

class JaringanData extends GetView<HomeController> {
  const JaringanData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final network = controller.currentNetwork.value ?? [];
      if (network.isEmpty) {
        return SizedBox(
          height: 200,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
      final toll = network.where((e) => e.type == "toll").firstOrNull;
      final arteri = network.where((e) => e.type == "arteri").firstOrNull;
      return Padding(
        padding: EdgeInsets.all(Sizes.s4),
        child: Row(
          children: [
            Expanded(
              child: InfoCard(
                iconPath: AssetConstant.carIcon,
                value: toll?.count?.toDotSeparated(wrap: false) ?? '0',
                type: "Lalu Lintas Jalan Tol",
                desc: "${toll?.point ?? 0} Titik Pantau",
              ),
            ),
            SizedBox(width: Sizes.s6),
            Expanded(
              child: InfoCard(
                iconPath: AssetConstant.carIcon,
                value: arteri?.count?.toDotSeparated(wrap: false) ?? '0',
                type: "Lalu Lintas Jalan Arteri",
                desc: "${arteri?.point ?? 0} Titik Pantau",
              ),
            ),
          ],
        ),
      );
    });
  }
}

class SaranaData extends GetView<HomeController> {
  const SaranaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final vehicle = controller.currentVehicle.value ?? [];
      if (vehicle.isEmpty) {
        return SizedBox(
          height: 200,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
      final bus = vehicle.where((e) => e.name == "Bus").firstOrNull;
      final plane = vehicle.where((e) => e.name == "Pesawat").firstOrNull;
      final ship = vehicle.where((e) => e.name == "Kapal Laut").firstOrNull;
      final ferry =
          vehicle.where((e) => e.name == "Kapal Penyeberangan").firstOrNull;
      final train = vehicle.where((e) => e.name == "Kereta Api").firstOrNull;

      return Padding(
        padding: EdgeInsets.all(Sizes.s2),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: InfoCard(
                      iconPath: AssetConstant.busIcon,
                      value: bus?.count?.toDotSeparated(
                            maxLength: 7,
                          ) ??
                          '0',
                      type: "Bus",
                      desc: "${bus?.percent ?? 0}% Lap. Masuk",
                    ),
                  ),
                  SizedBox(width: Sizes.s6),
                  Flexible(
                    flex: 4,
                    child: InfoCard(
                      iconPath: AssetConstant.boatIcon,
                      value: ferry?.count?.toDotSeparated(maxLength: 7) ?? '0',
                      type: "Kapal Penyeberangan",
                      desc: "${ferry?.percent ?? 0}% Lap. Masuk",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Sizes.s6),
            Expanded(
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: InfoCard(
                      iconPath: AssetConstant.trainIcon,
                      value: train?.count?.toDotSeparated(maxLength: 7) ?? '0',
                      type: "Kereta Api",
                      desc: "${train?.percent ?? '0'}% Lap. Masuk",
                    ),
                  ),
                  SizedBox(width: Sizes.s6),
                  Flexible(
                    flex: 2,
                    child: InfoCard(
                      iconPath: AssetConstant.planeIcon,
                      value: plane?.count?.toDotSeparated(maxLength: 7) ?? '0',
                      type: "Pesawat",
                      desc: "${plane?.percent ?? 0}% Lap. Masuk",
                    ),
                  ),
                  SizedBox(width: Sizes.s6),
                  Flexible(
                    flex: 2,
                    child: InfoCard(
                      iconPath: AssetConstant.shipIcon,
                      value: ship?.count?.toDotSeparated(maxLength: 7) ?? '0',
                      type: "Kapal Laut",
                      desc: "${ship?.percent ?? 0}% Lap. Masuk",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.value,
    required this.iconPath,
    required this.type,
    required this.desc,
  });

  final String value;
  final String iconPath;
  final String type;
  final String desc;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.s2, 
        vertical: isUnfolded ? Sizes.s3 : Sizes.s4
      ),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(
          Sizes.s4,
        ),
        border: Border.all(color: Get.theme.colorScheme.background),
        boxShadow: [
          BoxShadow(
            blurRadius: Sizes.s3,
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                iconPath,
                height: isUnfolded ? Sizes.s10 : (isSmallScreen ? Sizes.s14 : Sizes.s16),
                width: isUnfolded ? Sizes.s10 : (isSmallScreen ? Sizes.s14 : Sizes.s16),
              ),
              SizedBox(width: isUnfolded ? Sizes.s5 : isSmallScreen ? Sizes.s4 : Sizes.s8),
              Text(
                value,
                style: Get.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w800,
                  color: Get.theme.colorScheme.primary,
                  fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14),
                ),
              ),
            ],
          ),
          Text(
            type,
            style: Get.textTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: isUnfolded ? 14 : (isSmallScreen ? 12: 14),
            ),
          ),
          SizedBox(height: isUnfolded ? Sizes.s3 : isSmallScreen ? Sizes.s1 : Sizes.s2),
          Text(
            desc,
            style: Get.textTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14),
              color: Get.theme.colorScheme.inverseSurface,
            ),
          ),
        ],
      ),
    );
  }
}

class InfoCardV2 extends StatelessWidget {
  const InfoCardV2({
    super.key,
    required this.value,
    required this.desc,
  });

  final String value;
  final String desc;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isUnfolded ? Sizes.s2 : isSmallScreen ? Sizes.s1 : Sizes.s2, 
          vertical: isUnfolded ? Sizes.s2 : isSmallScreen ? Sizes.s1 : Sizes.s2
        ),
        height: isUnfolded ? Sizes.s30 : (isSmallScreen ? Sizes.s30 : Sizes.s56),
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(
            Sizes.s4,
          ),
          border: Border.all(color: Get.theme.colorScheme.background),
          boxShadow: [
            BoxShadow(
              blurRadius: Sizes.s3,
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: Get.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14),
                color: Get.theme.colorScheme.primary,
              ),
            ),
            Text(
              desc,
              style: Get.textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 12),
                color: Get.theme.colorScheme.inverseSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainMenuButton extends StatelessWidget {
  const MainMenuButton({
    super.key,
    required this.iconPath,
    required this.label,
    this.onTap,
  });

  final String iconPath;
  final String label;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;

    final MainMenuController controller2 = Get.find();
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: isUnfolded ? Sizes.s4 : Sizes.s1,
              vertical: isUnfolded ? Sizes.s2 : Sizes.s1),
          padding: EdgeInsets.all(Sizes.s4),
          decoration: BoxDecoration(
            color: AppColors.cardColor,
            borderRadius: BorderRadius.circular(Sizes.s10),
            border: Border.all(color: Get.theme.colorScheme.background),
            boxShadow: [
              BoxShadow(
                blurRadius: Sizes.s3,
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                height: isUnfolded
                    ? Sizes.s15
                    : (isSmallScreen ? Sizes.s18 : Sizes.s20),
                width: isUnfolded
                    ? Sizes.s15
                    : (isSmallScreen ? Sizes.s18 : Sizes.s20),
              ),
              SizedBox(height: Sizes.s4),
              Text(
                label,
                style: Get.textTheme.labelMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: isUnfolded
                      ? 14
                      : (isSmallScreen ? FontSizes.s8 : FontSizes.s10),
                  color: Get.theme.colorScheme.inverseSurface,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PenumpangData extends GetView<HomeController> {
  const PenumpangData({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Obx(
      () {
        final routineGraph = controller.currentGraph.value ?? [];
        final maxValue = routineGraph.isNotEmpty
            ? routineGraph
                    .map((data) => data.sales1)
                    .reduce((a, b) => a > b ? a : b) /
                0.9
            : 0.0;

        return SfCartesianChart(
          plotAreaBorderWidth: 0,
          tooltipBehavior: TooltipBehavior(enable: true),
          primaryXAxis: CategoryAxis(
            labelStyle:
                Get.textTheme.bodySmall!.copyWith(fontSize: isUnfolded ? 10 : (isSmallScreen ? 12 : 10)),
            axisLine: AxisLine(width: 0),
            majorGridLines: MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
            axisLabelFormatter: (value) {
              return ChartAxisLabel(
                double.tryParse(value.text)?.toInt().toDotSeparated() ??
                    value.text,
                value.textStyle,
              );
            },
            minimum: 0,
            maximum: maxValue.roundUp50k(),
            labelStyle:
                Get.textTheme.bodySmall!.copyWith(fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 10)),
            axisLine: AxisLine(width: 0),
            numberFormat: NumberFormat.decimalPattern('id'),
            majorGridLines: MajorGridLines(
              color: Get.theme.colorScheme.inverseSurface.withOpacity(0.5),
            ),
          ),
          series: <StackedColumnSeries<SalesData, String>>[
            StackedColumnSeries<SalesData, String>(
              name: 'Jumlah PNP',
              dataSource: routineGraph,
              xValueMapper: (SalesData sales, _) => sales.month,
              yValueMapper: (SalesData sales, _) => sales.sales1,
              color: AppColors.chartColor,
            )
          ],
        );
      },
    );
  }
}

class SalesData {
  SalesData(this.month, this.sales1, this.sales2);

  final String month;
  final double sales1;
  final double sales2;
}
