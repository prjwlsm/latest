import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../domain/core/constants/text_constants.dart';
import '../../domain/core/views/app_bar_view.dart';
import '../../domain/core/views/custom_button_view.dart';
import '../../domain/core/views/termsof_service_view.dart';
import '../../infrastructure/theme/app_colors.dart';
import '../../infrastructure/theme/app_text_theme.dart';
import 'controllers/complete_contract_tenant.controller.dart';

class CompleteContractTenantScreen
    extends GetView<CompleteContractTenantController> {
  const CompleteContractTenantScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      resizeToAvoidBottomInset: false,
      appBar: customAppbar(
          title: TextConstants.completeContractUploadSecurityDeposit),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 3.79.h,
                    ),
                Container(
                  width: 84.36.w,
                  // height: 257,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(3.08.w),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/svg/congratulations.svg',
                        ),
                        SizedBox(height: 2.49.h),
                        Text(
                          TextConstants.congratulations,
                          style: AppTextThemes.headline2.copyWith(
                            color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 0.47.h),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 14.85.w),
                          child: Text(
                            TextConstants.yauHaveSuccessfullyCompletedTheContractProcess,
                            style: AppTextThemes.body.copyWith(
                                color: AppColors.bodyColor[70]),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                )

                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 7.95.w,),
                  Expanded(
                    child: CustomButtonView(
                      text: TextConstants.completeContract,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 7.95.w,),
                ],
              ),
              SizedBox(
                height: 2.61.h,
              ),
              SizedBox(
                width: 82.36.w,
                  child: const TermsofServiceView()),
              SizedBox(
                height: 1.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
