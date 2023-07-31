import 'package:get/get.dart';

import '../../../../presentation/Starter/controllers/starter.controller.dart';

class StarterControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StarterController>(
      () => StarterController(),
    );
  }
}
