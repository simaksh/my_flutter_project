import 'dart:async';

import 'package:get/get.dart';

import '../../../infrastructure/route/route_name.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Timer(const Duration(seconds: 3), () {
      Get.offNamed(RouteName.login);
    });
  }
}
