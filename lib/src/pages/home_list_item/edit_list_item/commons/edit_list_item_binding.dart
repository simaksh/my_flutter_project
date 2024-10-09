import 'package:flutter_project/src/pages/home_list_item/edit_list_item/controller/edit_list_item_controller.dart';
import 'package:get/get.dart';

class EditListItemBinding extends Bindings {
  @override
  void dependencies() {
    final String? price = Get.parameters['price'];
    final String? name = Get.parameters['name'];
    final String? id = Get.parameters['id'];

    Get.lazyPut(() => EditListItemController(price: price, name: name, id: id));
  }
}
