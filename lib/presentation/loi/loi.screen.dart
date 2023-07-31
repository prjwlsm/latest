import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_colors.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_text_theme.dart';

import '../../domain/core/views/custom_button_view.dart';
import '../../domain/core/views/termsof_service_view.dart';
import '../../infrastructure/navigation/routes.dart';
import 'controllers/loi.controller.dart';

class LoiScreen extends GetView<LoiController> {
   const LoiScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 75,
        title:  Padding(
          padding: const EdgeInsets.all(13.0),
          child: Text('LOI ',style: AppTextThemes.headline2.copyWith(fontWeight: FontWeight.w700),),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height:  3.79.h,),
                      GestureDetector(
                        onTap: (){
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
                            padding: EdgeInsets.symmetric(horizontal: 5.38.w,vertical: 3.59.w),
                            child: Row(
                              children: [
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
                                        Text(
                                        'Tenant Preferences',
                                        style: AppTextThemes.headline4.copyWith(fontWeight: FontWeight.w700,color: Colors.black)
                                  ),
                                      Text(
                                          'Tenant Preferences',
                                          style: AppTextThemes.headline6.copyWith(color: AppColors.bodyColor[70])
                                      )


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
                        ]
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.25.h,),
                      Obx(() {
                          return Opacity(
                            opacity: controller.isNewUserRegistration.value ? 1 : 0.5,
                            child: Container(
                              width: 84.36.w,
                              // height: 257,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child:  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5.38.w,vertical: 3.59.w),
                                    child: Text(
                                      'Sign the LOI Document',
                                      style: AppTextThemes.headline3.copyWith(fontWeight: FontWeight.w700,color: Colors.black)),
                                  ),
                                  const Divider(),
                                  Padding(
                                    // padding: EdgeInsets.symmetric(horizontal: 5.38.w,vertical: 2.59.w),
                                    padding: EdgeInsets.only(left: 5.38.w, right: 5.38.w, top: 2.59.w,bottom: 6.67.w),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            'Document',
                                            style: AppTextThemes.headline4.copyWith(color: AppColors.bodyColor[70])),
                                        SizedBox(
                                          height: 1.18.h,
                                        ),
                                        Container(
                                          // width: 281,
                                          padding: EdgeInsets.symmetric(horizontal: 6.92.w,vertical: 4.1.w),
                                          height: 64,
                                          decoration: ShapeDecoration(
                                            color: AppColors.toneColor[80],
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/images/svg/icon_pdf.svg',
                                                width: 6.67.w,
                                                height: 6.67.w,
                                              ),
                                              SizedBox(width: 0.51.w,),
                                              Expanded(
                                                child: Text(
                                                  'Contract12345678.pdf',
                                                  style: AppTextThemes.headline5.copyWith(fontWeight: FontWeight.w500,color: Colors.black),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 1.18.h,
                                        ),
                                        SizedBox(
                                          width: 40.26.w,
                                          height: 5.92.h,
                                          child: CustomButtonView(
                                            text: 'Sign',
                                            fontSize: 9.33.sp,
                                            onPressed: controller.isNewUserRegistration.value ? (){

                                            } : null
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),

                            ),
                          );
                        }
                      ),
                      SizedBox(
                        height: 2.25.h,
                      ),

                      Obx(() {
                          return Opacity(
                            opacity: controller.isNewUserRegistration.value ? 1 : 0.5,
                            child: Container(
                              width: 84.62.w,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(right: 2.82.w,top: 1.3.h, bottom: 2.61.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.92.w),
                                      child: Text(
                                        'First month rent payment details',
                                        style: AppTextThemes.headline4.copyWith(fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(height: 1.3.h,),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3.33.w),
                                      child: OutlinedButton(
                                        onPressed: controller.isNewUserRegistration.value ? (){

                                        } : null,
                                        child: Padding(
                                          padding:  EdgeInsets.symmetric(vertical: 1.h),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 8.46.w,
                                                height: 8.46.w,
                                                decoration: ShapeDecoration(
                                                  color: AppColors.primaryColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: SvgPicture.asset(
                                                    'assets/images/svg/icon_add.svg',
                                                    width:4.36.w,
                                                    height: 4.36.w,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 1.28.w,),
                                              const Text('Upload Files'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                    ],
                  ),
                ),
              ),
              CustomButtonView(
                text: 'Comfirms',
                onPressed: () {
                  Get.offAllNamed(Routes.LOI);
                },
              ),
              SizedBox(
                height: 2.61.h,
              ),
              const TermsofServiceView(),
              SizedBox(
                height: 2.61.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
