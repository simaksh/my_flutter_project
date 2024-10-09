import 'package:flutter/material.dart';
import 'package:flutter_project/src/pages/home_list_item/add_list_item/controller/add_list_item_controller.dart';
import 'package:get/get.dart';

class AddListItemView extends GetView<AddListItemController> {
  const AddListItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: const Text(
          'Add Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
              controller: controller.nameController,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(labelText: 'price'),
              controller: controller.priceController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.submit,
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
