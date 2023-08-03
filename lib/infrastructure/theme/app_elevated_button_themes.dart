import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';

class AppElevatedButtonThemes {
  static ElevatedButtonThemeData light =  ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
      fixedSize:  Size( 80.w, 7.94.h),
      backgroundColor: AppColors.primaryColor,
      disabledForegroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),

    ),
  ));


}
