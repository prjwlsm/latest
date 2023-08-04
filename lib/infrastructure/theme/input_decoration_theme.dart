import 'package:flutter/material.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_colors.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_text_theme.dart';

class InputDecorationThemes {
  static InputDecorationTheme light =  InputDecorationTheme(

    border: const OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: AppColors.inputDecorationBorderSideColor,
      ),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: AppColors.inputDecorationBorderSideColor,
      ),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: AppColors.inputDecorationBorderSideColor,
      ),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    hintStyle: AppTextThemes.headline5.copyWith(color: AppColors.toneColor[90]),
    helperStyle: AppTextThemes.headline6
  );


}