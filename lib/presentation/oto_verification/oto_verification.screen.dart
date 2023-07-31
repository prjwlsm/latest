import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_colors.dart';

import '../../domain/core/views/custom_button_view.dart';
import '../../domain/core/views/custom_text_form_field.dart';
import '../../domain/core/views/termsof_service_view.dart';
import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/app_text_theme.dart';
import 'controllers/oto_verification.controller.dart';

class OtoVerificationScreen extends GetView<OtoVerificationController> {
  const OtoVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  child: SingleChildScrollView(
                      padding:
                          EdgeInsets.symmetric(vertical: 0.94.h, horizontal: 7.44.w),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 7.23.h),
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
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Column(
                                children: [
                                  Text('Verify your Mobile Number',
                                      textAlign: TextAlign.center,
                                      style: AppTextThemes.headline1.copyWith(
                                          fontSize: 21.33.sp,
                                          color: AppColors.textColor[60])),
                                  SizedBox(
                                    height: 1.54.h,
                                  ),
                                  Text(
                                      'We have sent an OTP on your mobile number +65 9XXX XXXX',
                                      textAlign: TextAlign.center,
                                      style: AppTextThemes.headline5
                                          .copyWith(color: AppColors.textColor[60])),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 14),
                              child: Text('OTP',
                                  style: AppTextThemes.headline4
                                      .copyWith(fontWeight: FontWeight.w700)),
                            ),
                            const SizedBox(height: 4),
                            const CustomTextFormField(
                              hintText: 'Enter 6-digit OTP Password',
                            ),
                            SizedBox(height: 1.18.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('00:58',style: AppTextThemes.headline4
                                    .copyWith(color: AppColors.textColor[70]),),
                                Text('Resend OTP?',style: AppTextThemes.headline4
                                    .copyWith(color: AppColors.textColor[70]))
                              ],
                            ),
                            SizedBox(height: 4.98.h),
                            CustomButtonView(
                              text: 'Register',
                              onPressed: () {
                                Get.offAllNamed(Routes.LOI,arguments: {"isNewUserRegistration" : true});
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
                                      style: AppTextThemes.headline4,
                                    ),
                                    TextSpan(
                                        text: 'Log in',
                                        style: AppTextThemes.headline4
                                            .copyWith(fontWeight: FontWeight.w700),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Get.toNamed(Routes.LOGIN);
                                          }),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ]
                      )
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 0.94.h, horizontal: 7.44.w),
                child: const TermsofServiceView(),
              )

            ],
          )
      );
    });
  }
}
