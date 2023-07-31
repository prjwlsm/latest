import 'package:get/get.dart';

import '../../../../presentation/inventory_checklist/controllers/inventory_checklist.controller.dart';

class InventoryChecklistControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InventoryChecklistController>(
      () => InventoryChecklistController(),
    );
  }
}
