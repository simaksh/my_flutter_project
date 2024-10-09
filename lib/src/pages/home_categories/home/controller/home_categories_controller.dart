import 'package:flutter_project/src/pages/home_categories/home/model/categories_view_model.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/route/route_name.dart';
import '../../../../infrastructure/route/route_path.dart';

class HomeCategoriesController extends GetxController {
  RxList<HomeCategoriesViewModel> categories = <HomeCategoriesViewModel>[].obs;

  void addItem(HomeCategoriesViewModel categorie) {
    categories.add(categorie);
  }

  void goToHomeListItemPage({required String productId}) {
    Get.toNamed('${RouteName.homeCategories}${RouteName.homeList}',
        parameters: {'id': productId});
  }

  void goToNextPage() =>
      Get.toNamed('${RouteName.homeCategories}${RoutePath.addCategories}');

  void goToHomeList() =>
      Get.toNamed('${RouteName.homeCategories}${RouteName.homeList}');
}
