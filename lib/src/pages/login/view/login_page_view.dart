import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/route/route_name.dart';
import '../controller/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextFormField(
              controller: controller.passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: Obx(() {
                  return IconButton(
                    onPressed: controller.showPass,
                    icon: controller.isPasswordShow.value
                        ? const Icon(
                            Icons.visibility_off,
                            color: Colors.pink,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: Colors.pinkAccent,
                          ),
                  );
                }),
              ),
              obscureText: !controller.isPasswordShow.value,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String username = controller.usernameController.text;
                String password = controller.passwordController.text;

                if (controller.login(username, password)) {
                  Get.toNamed(RouteName.homeCategories);
                } else {
                  Get.snackbar(
                      backgroundColor: Colors.red,
                      'Error',
                      'Invalid username or password');
                }
              },
              child: const Text('Register',style: TextStyle(color: Colors.pink),),
            ),
          ],
        ),
      ),
    );
  }
}
