import 'package:flutter/material.dart';
import 'package:flutter_project/src/pages/home_list_item/edit_list_item/controller/edit_list_item_controller.dart';
import 'package:get/get.dart';

class EditListItemView extends GetView<EditListItemController> {
  const EditListItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: const Text(
          'Edit Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Name', errorText: 'required'),
              controller: controller.nameController,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'price', errorText: 'required'),
              controller: controller.priceController,
            ),
            const SizedBox(height: 20),
            IconButton(
              onPressed: () => controller.submit(),
              icon: const Icon(
                Icons.edit,
                color: Colors.orange,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
