import 'package:flutter_project/src/infrastructure/route/route_name.dart';
import 'package:flutter_project/src/pages/home_categories/add_categories/commons/add_categories_binding.dart';
import 'package:flutter_project/src/pages/home_categories/add_categories/view/add_categorie_page_view.dart';
import 'package:flutter_project/src/pages/home_list_item/add_list_item/commons/add_list_item_binding.dart';
import 'package:flutter_project/src/pages/home_list_item/add_list_item/view/add_list_item_view.dart';
import 'package:flutter_project/src/pages/home_list_item/edit_list_item/commons/edit_list_item_binding.dart';
import 'package:flutter_project/src/pages/home_list_item/edit_list_item/view/edit_list_item_view.dart';
import 'package:flutter_project/src/pages/home_list_item/home/commons/home_list_binding.dart';
import 'package:flutter_project/src/pages/home_list_item/home/view/home_list_item_view.dart';
import 'package:flutter_project/src/pages/login/coomons/login_binding.dart';
import 'package:flutter_project/src/pages/login/view/login_page_view.dart';
import 'package:flutter_project/src/pages/splash/coomons/splash_binding.dart';
import 'package:flutter_project/src/pages/splash/view/splash_page_view.dart';
import 'package:get/get.dart';

import '../../pages/home_categories/home/commons/home_categories_binding.dart';
import '../../pages/home_categories/home/view/home_categories_view.dart';
import 'route_path.dart';

class RoutePage {
  static List<GetPage> pages = [
    GetPage(
      name: RoutePath.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
      children: [
        GetPage(
          name: RoutePath.homeCategories,
          page: () => const HomeCategoriesView(),
          binding: HomeCategoriesBinding(),
        ),
        GetPage(
            name: RouteName.addCategories,
            page: () => const AddCategoriesPageView(),
            binding: AddCategoriesBinding()),
        GetPage(
            name:RoutePath.homeListItem,
            page: () => const HomeListItemView(),
            binding: HomeListBinding()),
        GetPage(
            name: RouteName.addListItem,
            page: () => const AddListItemView(),
            binding: AddListItemBinding()),
        GetPage(
            name: RouteName.editListItem,
            page: () => const EditListItemView(),
            binding: EditListItemBinding()),
        GetPage(name: RouteName.splash, page: ()=>const SplashPageView(),binding: SplashBinding()),
      ],
    ),
  ];
}
