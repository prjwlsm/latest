import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_colors.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_text_theme.dart';

import '../../domain/core/views/custom_button_view.dart';
import '../../infrastructure/navigation/routes.dart';
import 'controllers/starter.controller.dart';

class StarterScreen extends GetView<StarterController> {
  const StarterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
      return Scaffold(
        body: Sizer(
          builder: (context, orientation, deviceType) {
            return Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom:-20,
                  child: Container(
                    width: 100.w,
                    height: 100.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:  AssetImage('assets/images/png/starter_bg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom:-50,
                  child: Opacity(
                    opacity: 0.80,
                    child: Container(
                      width: 100.h,
                      height: 59.47.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: const Alignment(0.00, -1.00),
                          end: const Alignment(0, 1),
                          colors: [ Colors.black.withOpacity(0),Colors.black],
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  left: 0,
              right: 0,
              top: 0,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 13.03.h),
                    width: 74.38.w,
                    child: Text(
                      'Manage \nyour properties \nefficiently.',
                      textAlign: TextAlign.center,
                      style: AppTextThemes.headline1.copyWith(color: Colors.white,fontSize: 21.33.sp),
                    ),
                  ),
                  SizedBox(height: 41.h,),
                  SvgPicture.asset(
                    'assets/images/svg/logo_starter.svg',
                    width: 23.49.w,
                    height: 7.44.h,
                  ),
                  SizedBox(height: 7.26.h,),
                  CustomButtonView(
                    text: 'Log in',
                    onPressed: (){
                      Get.offAllNamed(Routes.LOGIN);
                    },
                  ),
                  const SizedBox(height: 5,),
                   Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don’t have an account? ',
                          style: AppTextThemes.headline4.copyWith(color: Colors.white,letterSpacing: 0),
                        ),
                        TextSpan(
                          text: 'Register',
                          style: AppTextThemes.headline4.copyWith(color: AppColors.yellowColor,fontWeight: FontWeight.w700,letterSpacing: 0),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(Routes.REGISTRATION);
                              }
                        ),

                      ],
                    ),
                    textAlign: TextAlign.center,
                  )

                ],
              ),
            ),
              ],
            );
          }
        ),
      );
  }
}
