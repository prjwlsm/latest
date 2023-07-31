import 'package:get/get.dart';

class LoiController extends GetxController {
  //TODO: Implement LoiController
  final isNewUserRegistration = false.obs;
  dynamic argumentData = Get.arguments;
  @override
  void onInit() {
    isNewUserRegistration.value = argumentData['isNewUserRegistration'];
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
