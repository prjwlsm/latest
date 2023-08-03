import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/domain/core/constants/text_constants.dart';

import '../../../domain/core/views/custom_button_view.dart';
import '../../../domain/core/views/custom_text_form_field.dart';
import '../../../infrastructure/theme/app_text_theme.dart';

class TenantView extends GetView {
  const TenantView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('FIN / NRIC',
                  style: AppTextThemes.headline5
                      .copyWith(fontWeight: FontWeight.w700)),
              SizedBox(
                height: 0.36.h,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 3.85.w,
                    width: 22.82.w,
                    child: SvgPicture.asset(
                      'assets/images/svg/singpass.svg',
                    ),
                  ),
                  SizedBox(width: 3.08.w,),
                  Flexible(
                    child: SizedBox(
                      height: 5.69.h,
                      child: CustomButtonView(
                        text: TextConstants.registerWithSingpass,
                        fontSize: 10.67.sp,
                        letterSpacing: 0,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.2.h,),
              Text('Fields will automatically fill via Myinfo Singpass',
                  style: AppTextThemes.headline6),
            ],
          ),
        ),

        SizedBox(height: 2.01.h),
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text('Passport Number',
              style: AppTextThemes.headline5
                  .copyWith(fontWeight: FontWeight.w700,)),
        ),
        const SizedBox(height: 4),
        const CustomTextFormField(
          hintText: 'Passport Number',
        ),
        SizedBox(height: 2.h),
      ],
    );
  }
}
