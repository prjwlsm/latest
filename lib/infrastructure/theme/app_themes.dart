import 'package:flutter/material.dart';
import 'package:thatch_mobile_application/infrastructure/theme/outlined_button_theme.dart';

import 'app_bar_theme.dart';
import 'app_colors.dart';
import 'app_elevated_button_themes.dart';
import 'app_text_theme.dart';
import 'input_decoration_theme.dart';


class AppThemes {
  static ThemeData light(BuildContext context) => ThemeData(
    primaryColor: AppColors.primaryColor,
    canvasColor: Colors.white,
    inputDecorationTheme: InputDecorationThemes.light,
    fontFamily: 'Candara',
    appBarTheme: AppBarThemes.light(context),
    textTheme: AppTextThemes.textThemes(context),
    elevatedButtonTheme: AppElevatedButtonThemes.light,
    outlinedButtonTheme: AppOutlinedButtonTheme.light,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(AppColors.primaryColor),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(
          color: AppColors.primaryColor,
          width: 2.0,
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)),

    )
  );
}
