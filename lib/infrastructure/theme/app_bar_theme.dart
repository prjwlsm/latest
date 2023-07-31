import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppBarThemes {
  static AppBarTheme light(context) => AppBarTheme.of(context).copyWith(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0.1,
    scrolledUnderElevation: 10,
  );

  // static AppBarTheme dark = AppBarTheme(
  //   backgroundColor: AppColors.sea.shade800.withAlpha(50),
  //   foregroundColor: AppColors.sea.shade50,
  //   elevation: 5,
  //   scrolledUnderElevation: 10,
  // );
}
