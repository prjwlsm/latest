import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/core/views/custom_text_form_field.dart';
import '../../../infrastructure/theme/app_text_theme.dart';

class AgentView extends GetView {
  const AgentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.only(left: 14),
        child: Text('CEA Registration Number',
            style: AppTextThemes.headline5
                .copyWith(fontWeight: FontWeight.w700)),
      ),
      const SizedBox(height: 4),
      const CustomTextFormField(
          hintText: 'CEA Registration Number',
          helperText:
          "Fields will automatically fill via CEA number"),

        SizedBox(height: 1.5.h),
    ],);
  }
}
