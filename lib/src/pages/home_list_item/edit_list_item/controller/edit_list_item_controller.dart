import 'package:flutter/material.dart';
import 'package:flutter_project/src/pages/home_list_item/home/controller/home_list_controller.dart';
import 'package:get/get.dart';

class EditListItemController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  String? id, name, price;

  EditListItemController(
      {required this.price, required this.name, required this.id}) {
    nameController.text = name ?? '';
    priceController.text = price ?? '';
  }

  Future<void> submit() async {
    final listTodoController = Get.find<HomeListController>();
    listTodoController.updateItem(
      id: id,
      name: nameController.text,
      price: priceController.text,
    );

    Get.back();
  }
}
