import 'package:flutter/material.dart';
import 'package:flutter_project/src/pages/home_categories/home/controller/home_categories_controller.dart';
import 'package:flutter_project/src/pages/home_categories/home/model/categories_view_model.dart';
import 'package:get/get.dart';

class AddCategoriesController extends GetxController {
  TextEditingController titleController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  Future<void> submit() async {
    // if (!(formKey.currentState?.validate() ?? false)) {
    //   return;
    // }
    final newItem =
        HomeCategoriesViewModel(title: titleController.text, id: '');

    final listTodoController = Get.find<HomeCategoriesController>();

    listTodoController.addItem(newItem);
    titleController.clear();

    Get.back();
  }

  @override
  void onClose() {
    titleController.dispose();
    super.onClose();
  }
}
