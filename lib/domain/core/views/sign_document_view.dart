import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/domain/core/constants/text_constants.dart';

import '../../../infrastructure/theme/app_colors.dart';
import '../../../infrastructure/theme/app_text_theme.dart';
import 'custom_button_view.dart';

class SignDocumentView extends GetView {
  const SignDocumentView({Key? key,this.onPressed,required this.hedgingText, required this.fileName}) : super(key: key);
  final Function()? onPressed;
  final String hedgingText;
  final String fileName;
  Widget build(BuildContext context) {
    return Container(
      width: 84.36.w,
      // height: 257,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 5.38.w, vertical: 3.59.w),
            child: Text(hedgingText,
                style: AppTextThemes.headline3.copyWith(
                    fontWeight: FontWeight.w700,

                    color: Colors.black)),
          ),
          const Divider(),
          Padding(
            // padding: EdgeInsets.symmetric(horizontal: 5.38.w,vertical: 2.59.w),
            padding: EdgeInsets.only(
                left: 5.38.w,
                right: 5.38.w,
                top: 2.59.w,
                bottom: 6.67.w),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(TextConstants.document,
                    style: AppTextThemes.headline4
                        .copyWith(
                        letterSpacing: -0.45,
                        color:
                        AppColors.bodyColor[70])),
                SizedBox(
                  height: 1.18.h,
                ),
                Container(
                  // width: 281,
                  padding: EdgeInsets.symmetric(
                      horizontal: 6.92.w,
                      vertical: 4.1.w),
                  height: 64,
                  decoration: ShapeDecoration(
                    color: AppColors.toneColor[80],
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(4)),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/svg/icon_pdf.svg',
                        width: 6.67.w,
                        height: 6.67.w,
                      ),
                      SizedBox(
                        width: 0.51.w,
                      ),
                      Expanded(
                        child: Text(
                          fileName,
                          style: AppTextThemes.headline5
                              .copyWith(
                              letterSpacing: -0.40,
                              fontWeight:
                              FontWeight.w500,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.18.h,
                ),
                SizedBox(
                  width: 40.26.w,
                  height: 5.92.h,
                  child: CustomButtonView(
                      text: 'Sign',
                      icon: 'assets/images/svg/icon_edit.svg',
                      iconSize: 3.57.w,
                      fontSize: 9.33.sp,
                      onPressed: onPressed),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
