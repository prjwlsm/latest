import 'package:get/get.dart';

class InventoryChecklistController extends GetxController {
  //TODO: Implement InventoryChecklistController

  final List<Map<String, dynamic>> items = List.generate(
      5,
          (index) => {
        "id": index,
        "title": "Bedroom $index",
        "content": [
          'Wardrobe',
          'Air-conditioner',
          'Fan',
          'Light',
          'Bed',
          'Mattress',
          'Curtains',
          'Side Tables'
        ]
      });
  @override
  void onInit() {

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
