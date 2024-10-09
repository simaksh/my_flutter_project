import 'package:flutter/material.dart';
import 'package:flutter_project/src/pages/home_categories/add_categories/controller/add_categorie_controller.dart';
import 'package:get/get.dart';

class AddCategoriesPageView extends GetView<AddCategoriesController> {
  const AddCategoriesPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
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
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  labelText: 'title', border: OutlineInputBorder()),
              controller: controller.titleController,
              maxLength: 100,
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
