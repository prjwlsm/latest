import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/core/constants/assets_constants.dart';
import '../../../domain/core/constants/text_constants.dart';
import '../../../infrastructure/theme/app_colors.dart';
import '../../../infrastructure/theme/app_text_theme.dart';

class NoPropertiesCardView extends GetView {
  const NoPropertiesCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 17.06.h,
          ),
          SvgPicture.asset(
            AppAssets.noProperties,
            width: 44.36.w,
            height: 22.31.w,
          ),
          SizedBox(
            height: 2.13.h,
          ),
          Text(
            TextConstants.thereAreNoPropertiesHere,
            style: AppTextThemes.headline5
                .copyWith(fontWeight: FontWeight.w700),
          ),
          Text(TextConstants.startAddingYourProperties,
              style: AppTextThemes.body.copyWith(
                letterSpacing: -0.12,
                color: AppColors.bodyColor[70],
              ))
        ],
      ),
    );
  }
}
