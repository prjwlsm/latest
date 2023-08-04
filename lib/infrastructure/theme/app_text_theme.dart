

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_colors.dart';

class AppTextThemes{

  static TextTheme textThemes(BuildContext context) => Theme.of(context).textTheme.copyWith(

      displayLarge: AppTextThemes.headline1,//34 px
      displayMedium: AppTextThemes.headline2,//24 px
      displaySmall: AppTextThemes.headline3,//20
      headlineMedium: AppTextThemes.headline4,//18
      headlineSmall: AppTextThemes.headline5,//16
      titleLarge: AppTextThemes.headline6,//14
      bodyLarge: AppTextThemes.body, // 12
      bodyMedium: AppTextThemes.bodySmall,//10
      bodySmall: AppTextThemes.bodyXSmall//6
  ).apply(

    bodyColor: AppColors.textColor,
    decorationColor: Colors.amber,// not used
    displayColor: Colors.green//// not used

  );

  //34
  static TextStyle headline1 = TextStyle(
    fontSize: 22.67.sp, //34 px-
    fontWeight: FontWeight.w700,
    letterSpacing: -0.64,
    fontFamily: 'Candara',
  );



  static TextStyle headline2 = TextStyle(
    fontSize: 16.sp, //24 px-
    fontWeight: FontWeight.w500,
    letterSpacing: -0.60,
    fontFamily: 'Candara',
  );

  static TextStyle headline3 =  TextStyle(
    fontSize: 13.33.sp,//20-
    fontWeight: FontWeight.w400,
    letterSpacing: -0.50,
    fontFamily: 'Candara',
  );

  static TextStyle headline4 = TextStyle(
    fontSize: 12.sp, //18 -
    fontWeight: FontWeight.w400,
    letterSpacing: -0.18,
    fontFamily: 'Candara',
  );

  static TextStyle headline5 = TextStyle(
    fontSize: 10.67.sp, //16--
    fontWeight: FontWeight.w400,
    letterSpacing: -0.16,
    fontFamily: 'Candara',
  );

  static TextStyle headline6 = TextStyle(
    fontSize: 9.33.sp, //14 --
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    overflow: TextOverflow.fade,
    fontFamily: 'Candara',
  );

  static TextStyle body = TextStyle(
    fontSize: 8.00.sp, //12--
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    fontFamily: 'Candara',
  );

  static TextStyle bodySmall = TextStyle(
    fontSize: 6.67.sp, //10
    fontWeight: FontWeight.w400,
    letterSpacing: 0.80,
    fontFamily: 'Candara',
  );

  static TextStyle bodyXSmall = TextStyle(
    fontSize: 4.sp, //6
    fontWeight: FontWeight.w400,
    letterSpacing: 0.80,
    fontFamily: 'Candara',
  );

  static TextStyle textStyle30 = TextStyle(
    fontSize: 20.sp, //30 px-
    fontWeight: FontWeight.w700,
    letterSpacing: -0.75,
    fontFamily: 'Candara',
  );

  static TextStyle textStyle11 = TextStyle(
    fontSize: 7.33.sp, //11 px-
    fontWeight: FontWeight.w700,
    fontFamily: 'Candara',
    letterSpacing: 0
  );

}