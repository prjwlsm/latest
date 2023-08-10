import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../infrastructure/theme/app_colors.dart';
import '../../../infrastructure/theme/app_text_theme.dart';
import '../constants/assets_constants.dart';
import '../constants/text_constants.dart';

class ContainerIconTextView extends GetView {
  const ContainerIconTextView({Key? key, required this.assetName, this.iconWidth, this.iconHeight, this.containerColor = AppColors.primaryColor, required this.text,this.containerHeight, this.containerWidth, this.borderRadius = 11, this.opacity = 0.10, this.textColor, this.colorFilter,this.fontSize, this.horizontalPadding = 0, this.verticalPadding =0}) : super(key: key);
  final String assetName;
  final double? iconWidth;
  final double? iconHeight;
  final double? containerHeight;
  final double? opacity;
  final double? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? containerWidth;
  final double? fontSize;
  final Color? containerColor;
  final Color? textColor;
  final Color? colorFilter;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: opacity!,
          child: Container(
            width: containerWidth ?? 27.582.w,
            height: containerHeight ?? 10.836.w,
            decoration: ShapeDecoration(
              color: containerColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius!),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: 0,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal:horizontalPadding!,vertical: verticalPadding!),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  assetName,
                  width: iconWidth ?? 5.91.w,
                  height: iconWidth ?? 5.91.w,
                  fit: BoxFit.scaleDown,
                  colorFilter: colorFilter == null ? null : ColorFilter.mode(
                      colorFilter!, BlendMode.srcIn),
                ),
                SizedBox(width: 1.723.w,),
                Flexible(child: Text(text,maxLines:2, style: AppTextThemes.body.copyWith(color: textColor ?? AppColors.textColor[60],fontWeight: FontWeight.w700,fontSize: fontSize,overflow: TextOverflow.ellipsis),))

              ],
            ),
          ),
        )
      ],
    );
  }
}
