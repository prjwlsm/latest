

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_colors.dart';

class AppTextThemes{

  static TextTheme textThemes(BuildContext context) => Theme.of(context).textTheme.copyWith(

      displayLarge: AppTextThemes.headline1,
      displayMedium: AppTextThemes.headline2,
      displaySmall: AppTextThemes.headline3,
      headlineMedium: AppTextThemes.headline4,
      headlineSmall: AppTextThemes.headline5,
      titleLarge: AppTextThemes.headline6,
      bodyLarge: AppTextThemes.body,
      bodyMedium: AppTextThemes.bodySmall,
      bodySmall: AppTextThemes.bodyXSmall
  ).apply(
    bodyColor: AppColors.textColor,
    decorationColor: Colors.amber,// not used
    displayColor: Colors.green//// not used

  );

  //34
  static TextStyle headline1 = TextStyle(
    fontSize: 22.67.sp, //34 px
    fontWeight: FontWeight.w700,
    letterSpacing: 0.80,
  );

  static TextStyle headline2 = TextStyle(
    fontSize: 16.sp, //24 px
    fontWeight: FontWeight.w500,
    letterSpacing: 0.80,
  );

  static TextStyle headline3 =  TextStyle(
    fontSize: 13.33.sp,//20
    fontWeight: FontWeight.w400,
    letterSpacing: 0.80,
  );

  static TextStyle headline4 = TextStyle(
    fontSize: 12.sp, //18
    fontWeight: FontWeight.w400,
    letterSpacing: 0.80,
  );

  static TextStyle headline5 = TextStyle(
    fontSize: 10.67.sp, //16
    fontWeight: FontWeight.w400,
    letterSpacing: 0.80,
  );

  static TextStyle headline6 = TextStyle(
    fontSize: 9.33.sp, //14
    fontWeight: FontWeight.w400,
    letterSpacing: 0.80,
    overflow: TextOverflow.fade,
  );

  static TextStyle body = TextStyle(
    fontSize: 8.00.sp, //12
    fontWeight: FontWeight.w400,
    letterSpacing: 0.80,
  );

  static TextStyle bodySmall = TextStyle(
    fontSize: 6.67.sp, //10
    fontWeight: FontWeight.w400,
    letterSpacing: 0.80,
  );

  static TextStyle bodyXSmall = TextStyle(
    fontSize: 4.sp, //6
    fontWeight: FontWeight.w400,
    letterSpacing: 0.80,
  );

}