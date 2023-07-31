import 'package:get/get.dart';

import '../../../../presentation/LOI/controllers/loi.controller.dart';

class LoiControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoiController>(
      () => LoiController(),
    );
  }
}
