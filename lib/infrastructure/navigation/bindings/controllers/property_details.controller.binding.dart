import 'package:get/get.dart';

import '../../../../presentation/property_details/controllers/property_details.controller.dart';

class PropertyDetailsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertyDetailsController>(
      () => PropertyDetailsController(),
    );
  }
}
