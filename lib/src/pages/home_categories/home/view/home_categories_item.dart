import 'package:flutter/material.dart';
import 'package:flutter_project/src/pages/home_categories/home/controller/home_categories_controller.dart';
import 'package:flutter_project/src/pages/home_categories/home/model/categories_view_model.dart';
import 'package:get/get.dart';

class HomeCategoriesItem extends GetView<HomeCategoriesController> {
  const HomeCategoriesItem({super.key, required this.categories});

  final HomeCategoriesViewModel categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.pink.shade100,
        child: ListTile(
            title: Text(
              categories.title,
              style: const TextStyle(color: Colors.black),
            ),
            onTap: () {
              // controller.goToHomeList();
              controller.goToHomeListItemPage(productId: categories.id);
            }),
      ),
    );
  }
}
