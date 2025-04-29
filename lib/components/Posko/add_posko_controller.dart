import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddPoskoController extends GetxController {
  TextEditingController dateFc = TextEditingController();
  TextEditingController dateKejadianFc = TextEditingController();

  var latlongLocation = LatLng(0, 0).obs;
  RxBool isLoadMap = false.obs;
}
