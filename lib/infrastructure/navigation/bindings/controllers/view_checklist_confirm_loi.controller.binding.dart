import 'package:get/get.dart';

import '../../../../presentation/view_checklist_confirm_loi/controllers/view_checklist_confirm_loi.controller.dart';

class ViewChecklistConfirmLoiControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewChecklistConfirmLoiController>(
      () => ViewChecklistConfirmLoiController(),
    );
  }
}
