import 'package:get/get.dart';

class LoiController extends GetxController {
  //TODO: Implement LoiController
  final isNewUserRegistration = false.obs;
  dynamic argumentData = Get.arguments;
  @override
  void onInit() {

    super.onInit();
  }

  @override
  void onReady() {
    isNewUserRegistration.value = argumentData['isNewUserRegistration'];
    super.onReady();

  }

  @override
  void onClose() {
    super.onClose();
  }

}
