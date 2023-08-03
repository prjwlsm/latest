import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_colors.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_text_theme.dart';

import '../../domain/core/constants/text_constants.dart';
import '../../domain/core/views/app_bar_view.dart';
import '../../domain/core/views/custom_button_view.dart';
import '../../domain/core/views/sign_document_view.dart';
import '../../domain/core/views/termsof_service_view.dart';
import '../../domain/core/views/upload_files_view.dart';
import '../../infrastructure/navigation/routes.dart';
import 'controllers/loi.controller.dart';

class LoiScreen extends GetView<LoiController> {
  const LoiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      resizeToAvoidBottomInset: false,
      appBar: customAppbar(title: TextConstants.loi),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3.79.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.INVENTORY_CHECKLIST);
                        },
                        child: Container(
                          width: 84.36.w,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: AppColors.boxShadowColor,
                                blurRadius: 20,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.38.w, vertical: 3.59.w),
                            child: Row(children: [
                              Container(
                                width: 52,
                                height: 52,
                                decoration: const ShapeDecoration(
                                  color: AppColors.ovalBorderColor,
                                  shape: OvalBorder(),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: SvgPicture.asset(
                                    'assets/images/svg/tenant_preferences.svg',
                                    width: 18,
                                    height: 18,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 3.59.w,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Tenant Preferences',
                                        style: AppTextThemes.headline4.copyWith(
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 0,
                                            color: Colors.black)),
                                    Text('Tenant checklist requests',
                                        style: AppTextThemes.headline6.copyWith(
                                            color: AppColors.bodyColor[70]))
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: SvgPicture.asset(
                                  'assets/images/svg/arrow_next.svg',
                                  width: 18,
                                  height: 18,
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.25.h,
                      ),
                      Obx(() {
                        return Opacity(
                          opacity:
                              controller.isNewUserRegistration.value ? 1 : 0.5,
                          child: SignDocumentView(
                            hedgingText: TextConstants.signTheLOIDocument,
                              fileName: 'Contract12345678.pdf',
                              onPressed: controller.isNewUserRegistration.value
                                  ? () {}
                                  : null),
                        );
                      }),
                      SizedBox(
                        height: 2.25.h,
                      ),
                      Obx(() {
                        return Opacity(
                          opacity:
                              controller.isNewUserRegistration.value ? 1 : 0.5,
                          child: UploadFilesView(
                            textStyle: AppTextThemes.headline4,
                            text: TextConstants.firstMonthRentPaymentDetails,
                              onPressed: controller.isNewUserRegistration.value
                                  ? () {}
                                  : null),
                        );
                      }),
                    ],
                  ),
                ),
              ),
              Obx(() {
                return CustomButtonView(
                  text: TextConstants.confirm,
                  onPressed: controller.isNewUserRegistration.value
                      ? () {
                          Get.offAllNamed(Routes.VIEW_CHECKLIST_CONFIRM_LOI);
                        }
                      : null,
                );
              }),
              SizedBox(
                height: 2.61.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.64.w),
                child: const TermsofServiceView(),
              ),
              SizedBox(
                height: 1.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
