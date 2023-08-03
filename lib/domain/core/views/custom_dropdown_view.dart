import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../infrastructure/theme/app_colors.dart';
import '../../../infrastructure/theme/app_text_theme.dart';

class CustomDropdownView extends GetView {
   const CustomDropdownView({Key? key,this.hint = "", required this.items}) : super(key: key);
   final String hint;
  final List<dynamic> items;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DropdownButtonFormField2<String>(
          isExpanded: true,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            // Add more decoration..
          ),
          hint: Text(
            hint,
            style: AppTextThemes.headline5.copyWith(color: AppColors.toneColor[90]),
          ),
          items: items.asMap().map((i,item) => MapEntry(i, DropdownMenuItem<String>(
            value: i.toString(),
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ))).values
              .toList(),
          // validator: (value) {
          //   if (value == null) {
          //     return 'Please select gender.';
          //   }
          //   return null;
          // },
          // value: 1.toString(),
          onChanged: (value) {
            // Get.log(value.toString());
            // Get.log(items[int.parse(value!)]);
            //Do something when selected item is changed.
          },
          // onSaved: (value) {
          //   // selectedValue = value.toString();
          // },
          buttonStyleData:  ButtonStyleData(
            padding: EdgeInsets.only(right:4.w),
          ),
          dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
        Positioned(
          right: 13.0.w,
          child: Container(
            width: 1,
            color: AppColors.inputDecorationBorderSideColor,
            height: 15.66.h,
          ),
        ),
      ],
    );
  }
}
