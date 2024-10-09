import 'package:get/get.dart';

import '../../../../infrastructure/route/route_name.dart';
import '../../../../infrastructure/route/route_path.dart';
import '../../add_list_item/model/items.dart';

class HomeListController extends GetxController {
  RxList<Items> items = <Items>[].obs;

  void addItem(Items item) {
    items.add(item);
  }

  void deleteItem(int index) {
    items.removeAt(index);
  }

  void goToEditPage(Items item) {
    Get.toNamed(RouteName.editListItem, parameters: {
      'id': item.id,
      'name': item.name,
      'price': item.price,
    })?.then((result) {
      if (result != null) {
        int index = items.indexWhere((i) => i.id == result['id']);
        if (index != -1) {
          items[index] = Items(
            id: result['id'],
            name: result['name'],
            price: result['price'],
          );
        }
      }
    });
  }

  void goToNextPage() =>
      Get.toNamed('${RouteName.homeList}${RoutePath.addListItem}');

  void updateItem(
      {required String? id, required String name, required String price}) {
    int index = items.indexWhere((item) => item.id == id);
    if (index != -1) {
      items[index] = Items(id: id!, name: name, price: price);
    }
  }

  void calculateTotalPrice() {}
}
