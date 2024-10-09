import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class SplashPageView extends GetView<SplashController> {
  const SplashPageView({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return const Scaffold(
        body: Center(
          child: Text(
            'Welcome to MyApp!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }
  }
}
