import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../infrastructure/theme/app_colors.dart';
import '../../../infrastructure/theme/app_text_theme.dart';

class TermsofServiceView extends GetView {
  const TermsofServiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'I agree to Thatch’s ',
            style: AppTextThemes.body,
          ),
          TextSpan(
            text: 'Terms of Service',
            style: AppTextThemes.body.copyWith(fontWeight: FontWeight.w700,color: AppColors.primaryColor),
          ),
          TextSpan(
            text: ' and ',
            style: AppTextThemes.body,
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: AppTextThemes.body.copyWith(fontWeight: FontWeight.w700, color: AppColors.primaryColor),
          ),
          TextSpan(
            text: ' including the collection, use and disclosure of my information.',
            style: AppTextThemes.body,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
