import 'package:flutter_project/src/pages/home_list_item/home/controller/home_list_controller.dart';
import 'package:get/get.dart';

class HomeListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeListController());
  }
}
