import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/domain/core/constants/assets_constants.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_colors.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_text_theme.dart';
import 'package:thatch_mobile_application/infrastructure/theme/icons_themes.dart';

import '../../domain/core/views/custom_button_view.dart';
import '../../domain/core/views/custom_text_form_field.dart';
import '../../domain/core/views/termsof_service_view.dart';
import '../../infrastructure/navigation/routes.dart';
import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body:  SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                  child: Column(
                    children: [
                      SizedBox(height: 7.97.h,),
                      Center(
                        child: SvgPicture.asset(
                          AppAssets.logo,
                          width: 20.w,
                          height: 20.w,
                        ),
                      ),
                      Text('Welcome Back!',style: AppTextThemes.headline1.copyWith(fontSize: 21.33.sp)),
                      SizedBox(
                        height: 0.83.h,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: Text('Email',style: AppTextThemes.headline4.copyWith(fontWeight: FontWeight.w700)),
                                ),
                                const SizedBox(height: 4),
                                CustomTextFormField(
                                  prefixIcon: IconsThemes.prefixSVGIconThemes('assets/images/svg/icon_profile.svg'),
                                  hintText: 'Email',
                                ),
                                const SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: Text('Password',style: AppTextThemes.headline4.copyWith(fontWeight: FontWeight.w700)),
                                ),
                                const SizedBox(height: 4),
                                CustomTextFormField(
                                  prefixIcon: IconsThemes.prefixSVGIconThemes('assets/images/svg/icon_lock.svg'),
                                  hintText: 'Password',
                                ),
                                // SizedBox(height: 2,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Forgot Password?',style: AppTextThemes.headline6),
                                    Row(
                                      children: [
                                        Transform.scale(
                                          scale: 1.2,
                                          child: Obx(() {
                                              return Checkbox(
                                                value: controller.isRememberMe.value,
                                                onChanged: (bool? newValue) =>controller.isRemember(newValue),
                                              );
                                            }
                                          ),
                                        ),
                                        Text('Remember me',style: AppTextThemes.headline6),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 3.h,),
                                CustomButtonView(
                                  text: 'Log in',
                                  onPressed: (){
                                    Get.offAllNamed(Routes.HOME);
                                  },
                                ),
                                SizedBox(height: 0.59.h,),
                                Center(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Don’t have an account? ',
                                          style: AppTextThemes.headline4.copyWith(letterSpacing: 0),
                                        ),
                                        TextSpan(
                                          text: 'Register',
                                          style: AppTextThemes.headline4.copyWith(fontWeight: FontWeight.w700,letterSpacing: 0),
                                          recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Get.toNamed(Routes.REGISTRATION);
                                          }
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),

                                SizedBox(height: 6.87.h,),

                                Center(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 17.95.w,
                                        height: 17.95.w,
                                        decoration: ShapeDecoration(
                                          color:AppColors.toneColor[80],
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(19),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(3.85.w),
                                          child: SvgPicture.asset(
                                            'assets/images/svg/fingerprint.svg',
                                            width: 10.w,
                                            height: 10.w,
                                          ),
                                        ),
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Tap to login with ',
                                              style: AppTextThemes.headline4.copyWith(letterSpacing: -0.81),
                                            ),
                                            TextSpan(
                                              text: 'Biometric',
                                              style: AppTextThemes.headline4.copyWith(fontWeight: FontWeight.w700,letterSpacing: -0.81),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                 Positioned(
                  // top: 25,
                  bottom: 1.66.h,
                  left: 30,
                  right: 30,
                  child: TermsofServiceView(),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
