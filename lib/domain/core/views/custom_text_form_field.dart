import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../infrastructure/theme/app_colors.dart';


class CustomTextFormField extends GetView {
  const CustomTextFormField({super.key, this.prefixIcon, this.hintText,this.helperText, this.topRightRadius = 12, this.bottomRightRadius = 12, this.topLeftRadius = 12, this.bottomLeftRadius = 12,this.hintTextSize,this.suffixIcon, this.fillColor});

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? helperText;
  final double topRightRadius;
  final double bottomRightRadius;
  final double? hintTextSize;

  final double topLeftRadius;
  final double bottomLeftRadius;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        fillColor: fillColor == null ? null : fillColor!.withOpacity(0.5),
        filled: fillColor == null ? false : true,
        focusedBorder:  border(context),
        border: border(context),
        enabledBorder: border(context),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        contentPadding: const EdgeInsets.fromLTRB(14.0, 18.0, 14.0, 18.0),
        hintStyle: Theme.of(context).inputDecorationTheme.hintStyle!.copyWith(
          letterSpacing: 0,
          fontSize: hintTextSize

        ),
        helperStyle: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
          letterSpacing: 0
        ),
        helperText: helperText,
      ),
    );

  }

  border(context) => OutlineInputBorder(
    borderRadius: BorderRadius.only(topRight: Radius.circular(topRightRadius), topLeft: Radius.circular(topLeftRadius),bottomRight: Radius.circular(bottomRightRadius),bottomLeft: Radius.circular(bottomLeftRadius)),
    borderSide: Theme.of(context).inputDecorationTheme.border!.borderSide,
  );
}
