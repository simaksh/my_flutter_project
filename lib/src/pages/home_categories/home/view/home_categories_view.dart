import 'package:flutter/material.dart';
import 'package:flutter_project/src/pages/home_categories/home/view/home_categories_item.dart';
import 'package:get/get.dart';

import '../controller/home_categories_controller.dart';

class HomeCategoriesView extends GetView<HomeCategoriesController> {
  const HomeCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: const Text(
          'List of Categories',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: controller.categories.length,
                itemBuilder: (context, index) {
                  return HomeCategoriesItem(
                      categories: controller.categories[index]);
                },
              );
            }),
          ),
          FloatingActionButton(
            onPressed: controller.goToNextPage,
            child: const Icon(Icons.add, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
