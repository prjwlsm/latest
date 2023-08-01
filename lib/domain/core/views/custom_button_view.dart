import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../infrastructure/theme/app_colors.dart';
import '../../../infrastructure/theme/app_text_theme.dart';
import '../status/button_status.dart';


class CustomButtonView extends GetView {

  const CustomButtonView({Key? key,this.buttonStatus = ButtonStatus.enable,this.onPressed,required this.text, this.fontSize, this.fontWeight = FontWeight.w700,this.icon, this.iconSize}) : super(key: key);
  final ButtonStatus buttonStatus;
  final double? fontSize;
  final  String text;
  final  String? icon;
  final double? iconSize;
  final  FontWeight fontWeight;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: onPressed == null ? null : () {
        onPressed!();
      },
      child: buttonStatus == ButtonStatus.loading ?  Container(
        width: 40,
        height: 40,
        child: const CircularProgressIndicator(
          // color: Colors.white,
          strokeWidth: 5,
        ),
      )
       : icon == null ? Text(
        text,
        style: AppTextThemes.headline2.copyWith(fontWeight: fontWeight,fontSize: fontSize),
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon!,
            width: iconSize ?? 4.62.w,
            height: iconSize ?? 4.62.w,
          ),
          SizedBox(
            width: 2.w,
          ),
           Text(
              text,
              style: AppTextThemes.headline2.copyWith(fontWeight: fontWeight,fontSize: fontSize),
            ),
        ],
      )
      // }
      // ),
    );
  }
}
