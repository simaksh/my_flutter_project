import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool isPasswordShow = true.obs;
  final Map<String, String> users = {
    'user1': 'password1',
    'user2': 'password2',
    'user3': 'password3',
  };

  bool login(String username, String password) {
    return users[username] == password;
  }

  void showPass() {
    isPasswordShow.value = !isPasswordShow.value;
  }
}
