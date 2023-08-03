import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/domain/core/constants/text_constants.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../domain/core/views/custom_button_view.dart';
import '../../domain/core/views/custom_text_form_field.dart';
import '../../domain/core/views/termsof_service_view.dart';
import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/app_text_theme.dart';
import 'controllers/registration.controller.dart';
import 'views/agent_view.dart';
import 'views/tenant_view.dart';



class RegistrationScreen extends GetView<RegistrationController> {
   RegistrationScreen({Key? key}) : super(key: key);

  // ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {

    // scrollController.animateTo(
    //   0,
    //   duration: const Duration(milliseconds: 700),
    //   curve: Curves.easeIn,
    // );
    return Sizer(builder: (context, orientation, deviceType) {
      Get.log(Get.height.toString());
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0.94.h, horizontal: 7.44.w),
              child: Column(
                children: [
                  SizedBox(height: 3.525.h),
                  Center(
                    child: SvgPicture.asset(
                      'assets/images/svg/logo.svg',
                      width: 20.w,
                      height: 20.w,
                    ),
                  ),
                  SizedBox(
                    height: 1.54.h,
                  ),
                  Text('Register!',
                      style:
                          AppTextThemes.headline1.copyWith(fontSize: 21.33.sp)),
                  SizedBox(
                    height: 1.54.h,
                  ),


                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 2, color: AppColors.toggleSwitchColorBorder),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ToggleSwitch(
                        // animate: true,
                        minWidth: 40.6.w,
                        minHeight: 5.46.h,
                        cornerRadius: 10.0,
                        inactiveBgColor: Colors.white,
                        inactiveFgColor: AppColors.toneColor,
                        customTextStyles: [
                          AppTextThemes.headline4
                              .copyWith(fontWeight: FontWeight.w700,letterSpacing: 0),
                        ],
                        totalSwitches: 2,
                        labels: TextConstants.registersTypes,
                        radiusStyle: true,
                        onToggle: (index) => controller.selectRegister(index),
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 2.61.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedSize(
                          duration: const Duration(milliseconds: 800),
                          curve: Curves.easeOut,
                          child: Obx(() {
                              return controller.selectedRegister.value == TextConstants.registersTypes[0] ? TenantView() : AgentView();
                            }
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Text('Name',
                              style: AppTextThemes.headline5
                                  .copyWith(fontWeight: FontWeight.w700)),
                        ),
                        const SizedBox(height: 4),
                        const CustomTextFormField(
                          hintText: 'Name',
                        ),
                        SizedBox(height: 2.01.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Text('Mobile',
                              style: AppTextThemes.headline5
                                  .copyWith(fontWeight: FontWeight.w700)),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors
                                        .inputDecorationBorderSideColor,
                                    width: 1),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                              ),
                              child: Center(
                                  child: Text("+65",
                                      style: AppTextThemes.headline5.copyWith(
                                          fontWeight: FontWeight.w700))),
                            ),
                            const Expanded(
                              child: CustomTextFormField(
                                  hintText: 'Mobile',
                                  topLeft: 0,
                                  bottomLeft: 0),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Text('Email Address',
                              style: AppTextThemes.headline5
                                  .copyWith(fontWeight: FontWeight.w700)),
                        ),
                        const SizedBox(height: 4),
                        const CustomTextFormField(
                          hintText: 'Email Address',
                        ),
                        SizedBox(height: 2.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Text('Create New Password',
                              style: AppTextThemes.headline5
                                  .copyWith(fontWeight: FontWeight.w700)),
                        ),
                        const SizedBox(height: 4),
                        const CustomTextFormField(
                          hintText: 'Password',
                        ),
                        SizedBox(height: 2.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Text('Confirm Password',
                              style: AppTextThemes.headline5
                                  .copyWith(fontWeight: FontWeight.w700)),
                        ),
                        const SizedBox(height: 4),
                        const CustomTextFormField(
                          hintText: 'Password',
                        ),
                        SizedBox(
                          height: 2.61.h,
                        ),
                        CustomButtonView(
                          text: 'Next',
                          onPressed: () {
                            Get.toNamed(Routes.OTO_VERIFICATION);
                          },
                        ),
                        SizedBox(
                          height: 0.59.h,
                        ),
                        Center(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Already have account? ',
                                  style: AppTextThemes.headline4.copyWith(letterSpacing: 0),
                                ),
                                TextSpan(
                                    text: 'Log in',
                                    style: AppTextThemes.headline4
                                        .copyWith(fontWeight: FontWeight.w700,letterSpacing: 0),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.toNamed(Routes.LOGIN);
                                      }),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 5.33.h,
                        ),
                        const TermsofServiceView(),
                        SizedBox(height:3.09.h,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
