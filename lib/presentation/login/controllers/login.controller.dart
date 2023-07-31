import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final RxBool isRememberMe = false.obs;
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

  void isRemember(isRememberMe) => this.isRememberMe.value = isRememberMe;
}
