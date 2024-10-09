import 'package:flutter/material.dart';
import 'package:flutter_project/src/pages/home_list_item/add_list_item/model/items.dart';
import 'package:flutter_project/src/pages/home_list_item/home/controller/home_list_controller.dart';
import 'package:get/get.dart';

class AddListItemController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  Future<void> submit() async {
    final newItem =
        Items(name: nameController.text, price: priceController.text, id: '');

    final listProductController = Get.find<HomeListController>();

    listProductController.addItem(newItem);

    nameController.clear();
    priceController.clear();

    Get.back();
  }

  @override
  void onClose() {
    nameController.dispose();
    priceController.dispose();
    super.onClose();
  }
}
