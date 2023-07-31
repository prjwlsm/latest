import 'package:get/get.dart';
import 'package:thatch_mobile_application/domain/core/constants/text_constants.dart';

class RegistrationController extends GetxController {
  //TODO: Implement RegistrationController
  final RxString selectedRegister = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    selectedRegister.value = TextConstants.registersTypes[0];
  }

  @override
  void onClose() {
    super.onClose();
  }

  void selectRegister(index) => selectedRegister.value = TextConstants.registersTypes[index];
}
