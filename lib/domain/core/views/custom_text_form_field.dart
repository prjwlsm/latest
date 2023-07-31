import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../infrastructure/theme/app_colors.dart';


class CustomTextFormField extends GetView {
  const CustomTextFormField({super.key, this.prefixIcon, this.hintText,this.helperText, this.topRight = 12, this.bottomRight = 12, this.topLeft = 12, this.bottomLeft = 12});

  final Widget? prefixIcon;
  final String? hintText;
  final String? helperText;
  final double topRight;
  final double bottomRight;

  final double topLeft;
  final double bottomLeft;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        focusedBorder:  border(context),
        border: border(context),
        enabledBorder: border(context),
        prefixIcon: prefixIcon,
        hintText: hintText,
        helperText: helperText,
      ),
    );

  }

  border(context) => OutlineInputBorder(
    borderRadius: BorderRadius.only(topRight: Radius.circular(topRight), topLeft: Radius.circular(topLeft),bottomRight: Radius.circular(bottomRight),bottomLeft: Radius.circular(bottomLeft)),
    borderSide: Theme.of(context).inputDecorationTheme.border!.borderSide,
  );
}
