import 'package:flutter_project/src/pages/home_list_item/add_list_item/controller/add_list_item_controller.dart';
import 'package:get/get.dart';

class AddListItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddListItemController());
  }
}
