import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_list_controller.dart';

class HomeListItemView extends GetView<HomeListController> {
  const HomeListItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: const Text(
          'List of items',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: controller.items.length,
                itemBuilder: (context, index) {
                  final item = controller.items[index];
                  return Card(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      title: Text(item.name),
                      subtitle: Text(item.price),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              controller.goToEditPage(item);
                            },
                            icon: const Icon(Icons.edit, color: Colors.orange),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => controller.deleteItem(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
          ),
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: controller.goToNextPage,
            child: const Icon(Icons.add, color: Colors.pink),
          ),
        ],
      ),
    );
  }
}
