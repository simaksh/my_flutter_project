import 'package:flutter/material.dart';
import 'package:flutter_project/src/infrastructure/route/route_name.dart';
import 'package:flutter_project/src/infrastructure/route/route_page.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.login,
      getPages: RoutePage.pages);
}
