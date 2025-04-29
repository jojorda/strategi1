import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetailProvController extends GetxController {
  PageController pageController = PageController();
  RxBool isRutin = true.obs;
  RxBool isComing = true.obs;
  RxList<String> listFilter = ["a"].obs;

  RxInt groupValue = 1.obs;

  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();

  onMapCreated(GoogleMapController cont) {
    controller.complete(cont);
  }
}
