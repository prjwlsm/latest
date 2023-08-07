import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/core/constants/assets_constants.dart';
import '../../../domain/core/constants/text_constants.dart';
import '../../../domain/core/views/container_icon_text_view.dart';
import '../../../domain/core/views/custom_text_form_field.dart';
import '../../../infrastructure/theme/app_colors.dart';
import '../../../infrastructure/theme/app_text_theme.dart';
import '../../../infrastructure/theme/icons_themes.dart';

class DashboardHeaderView extends GetView {
  const DashboardHeaderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 3.05.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 5.38.w,
            ),
            SvgPicture.asset(
              AppAssets.logo,
              width: 56,
              height: 56,
            ),
            SizedBox(
              width: 4.1.w,
            ),
            Expanded(
                child: SizedBox(
                    width: 12.31.w,
                    child: CustomTextFormField(
                      hintText: TextConstants.search,
                      hintTextSize: 12.sp,
                      topLeftRadius: 15,
                      topRightRadius: 15,
                      bottomLeftRadius: 15,
                      bottomRightRadius: 15,
                      fillColor: AppColors.toneColor,
                      suffixIcon:
                      IconsThemes.suffixIconSVGIconThemes(
                          AppAssets.iconSearch),
                    ))),
            SizedBox(
              width: 5.38.w,
            ),
          ],
        ),
        SizedBox(
          height: 2.37.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.44.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                    width: 53.08.w,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: TextConstants.manage,
                            style: AppTextThemes.textStyle30
                                .copyWith(
                                color:
                                AppColors.primaryColor),
                          ),
                          TextSpan(
                            text:
                            " ${TextConstants.yourPropertiesHere}",
                            style: AppTextThemes.textStyle30,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.start,
                    )),
              ),
              SizedBox(
                height: 3.3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerIconTextView(
                    assetName: AppAssets.iconRequests,
                    text: TextConstants.requests,
                  ),
                  ContainerIconTextView(
                    assetName: AppAssets.iconInProgress,
                    text: TextConstants.inProgress,
                    containerColor: AppColors.yellowColor,
                    iconWidth: 7.387.w,
                    iconHeight: 7.141.w,
                  ),
                  ContainerIconTextView(
                    assetName: AppAssets.iconRented,
                    text: TextConstants.rented,
                    containerColor: AppColors.greenColor,
                    iconWidth: 5.64.w,
                    iconHeight: 5.64.w,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 2.302.h,
        ),
      ],
    );
  }
}
