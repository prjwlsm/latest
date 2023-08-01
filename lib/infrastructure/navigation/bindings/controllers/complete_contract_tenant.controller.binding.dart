import 'package:get/get.dart';

import '../../../../presentation/complete_contract_tenant/controllers/complete_contract_tenant.controller.dart';

class CompleteContractTenantControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompleteContractTenantController>(
      () => CompleteContractTenantController(),
    );
  }
}
