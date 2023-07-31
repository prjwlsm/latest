import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';

class AppOutlinedButtonTheme {
  static OutlinedButtonThemeData light =  OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      // disabledForegroundColor: Colors.white,
      minimumSize: Size(20,5.69.h),
      foregroundColor: AppColors.textColor,
      textStyle: AppTextThemes.headline5.copyWith(fontWeight: FontWeight.w700),
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Color(0x7FD9D9D9)),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),);


}