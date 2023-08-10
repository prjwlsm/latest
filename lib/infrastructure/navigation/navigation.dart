import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  const EnvironmentsBadge({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: Routes.STARTER,
      page: () => const StarterScreen(),
      binding: StarterControllerBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginControllerBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(seconds: 2),
    ),
    GetPage(
      name: Routes.REGISTRATION,
      page: () => RegistrationScreen(),
      binding: RegistrationControllerBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(seconds: 2),
    ),
    GetPage(
      name: Routes.OTO_VERIFICATION,
      page: () => const OtoVerificationScreen(),
      binding: OtoVerificationControllerBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: Routes.LOI,
      page: () => const LoiScreen(),
      binding: LoiControllerBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: Routes.INVENTORY_CHECKLIST,
      page: () => InventoryChecklistScreen(),
      binding: InventoryChecklistControllerBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: Routes.VIEW_CHECKLIST_CONFIRM_LOI,
      page: () => const ViewChecklistConfirmLoiScreen(),
      binding: ViewChecklistConfirmLoiControllerBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: Routes.COMPLETE_CONTRACT_TENANT,
      page: () => const CompleteContractTenantScreen(),
      binding: CompleteContractTenantControllerBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: Routes.PROPERTY_DETAILS,
      page: () => const PropertyDetailsScreen(),
      binding: PropertyDetailsControllerBinding(),
    ),
  ];
}
