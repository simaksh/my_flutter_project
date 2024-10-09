import 'package:flutter_project/src/pages/home_categories/add_categories/controller/add_categorie_controller.dart';
import 'package:get/get.dart';

class AddCategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCategoriesController());
  }
}
