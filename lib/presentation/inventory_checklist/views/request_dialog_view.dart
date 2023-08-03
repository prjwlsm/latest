import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/domain/core/constants/assets_constants.dart';

import '../../../domain/core/constants/text_constants.dart';
import '../../../domain/core/views/custom_button_view.dart';
import '../../../domain/core/views/custom_dropdown_view.dart';
import '../../../domain/core/views/custom_text_form_field.dart';
import '../../../infrastructure/theme/app_text_theme.dart';

class RequestDialogView extends GetView {
  const RequestDialogView({Key? key, required this.items}) : super(key: key);
  final Map<String, dynamic> items;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 10,
      insetPadding: const EdgeInsets.symmetric(horizontal: 30,vertical: 16),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
      title: Text(items['title'],style: AppTextThemes.headline5.copyWith(letterSpacing: 0,fontWeight: FontWeight.w700),),
      content: Container(
        margin: EdgeInsets.zero,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 14,),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,bottom: 24,top: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 36.92.w,
                        height: 12.68.h,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(items['image']),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                      const SizedBox(width: 16,),
                      Expanded(child: Text(items['content'],style: AppTextThemes.body,))
                    ],
                  ),
                  SizedBox(height: 2.25.h),
                  CustomDropdownView(
                    items: TextConstants.requestTypes,
                    hint: TextConstants.selectRequestType,
                  ),
                  SizedBox(height: 0.83.h,),
                  CustomTextFormField(
                    hintText: TextConstants.enterYourRequest,

                  ),
                  SizedBox(height: 1.07.h,),
                  Row(
                    children: [

                      Expanded(
                        child: SizedBox(
                          height: 5.69.h,
                          child: CustomButtonView(
                            icon: AppAssets.iconEdit,
                            text: TextConstants.sendRequest,
                            fontSize: 10.67.sp,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(width: 3.08.w,),
                      SizedBox(
                        height: 5.69.h,
                        width: 26.92.w,
                        child: CustomButtonView(
                          text: TextConstants.close,
                          fontSize: 10.67.sp,
                          backgroundColor: Colors.grey,
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
