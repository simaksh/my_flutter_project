import 'package:get/get.dart';

import '../controller/home_categories_controller.dart';

class HomeCategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeCategoriesController());
  }
}
