import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../infrastructure/theme/app_colors.dart';
import '../../../infrastructure/theme/app_text_theme.dart';

class UploadFilesView extends GetView {
  const UploadFilesView({Key? key,this.onPressed}) : super(key: key);
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84.62.w,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            right: 2.82.w, top: 1.3.h, bottom: 2.61.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 6.92.w),
              child: Text(
                'First month rent payment details',
                style: AppTextThemes.headline4.copyWith(
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 1.3.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.33.w),
              child: OutlinedButton(
                onPressed:onPressed,
                child: Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 1.h),
                  child: Row(
                    children: [
                      Container(
                        width: 8.46.w,
                        height: 8.46.w,
                        decoration: ShapeDecoration(
                          color: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/images/svg/icon_add.svg',
                            width: 4.36.w,
                            height: 4.36.w,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1.28.w,
                      ),
                      const Text('Upload Files'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
