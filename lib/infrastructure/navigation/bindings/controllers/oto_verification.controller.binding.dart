import 'package:get/get.dart';

import '../../../../presentation/oto_verification/controllers/oto_verification.controller.dart';

class OtoVerificationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtoVerificationController>(
      () => OtoVerificationController(),
    );
  }
}
