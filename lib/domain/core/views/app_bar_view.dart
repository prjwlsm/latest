import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

import '../../../infrastructure/theme/app_text_theme.dart';

PreferredSizeWidget customAppbar({required String title,bool isLeading = false}){
  return AppBar(
    toolbarHeight:10.07.h,
    title: Padding(
      padding:  EdgeInsets.all(isLeading ?0 :13.0),
      child: Text(
        title,
        maxLines: 3,
        style:
        AppTextThemes.headline2.copyWith(fontWeight: FontWeight.w700,overflow: TextOverflow.ellipsis,),
      ),
    ),
    leadingWidth: 17.w,
    leading: isLeading ? Padding(
      padding: EdgeInsets.only(left: 7.44.w),
      child: SizedBox(
        height: 10,
        child: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: SvgPicture.asset(
            'assets/images/svg/icon_back.svg',
            width: 20,
            height: 10,
          ),
        ),
      ),
    ): null,
  );;
}
// class AppBarView extends GetView {
//   const AppBarView({Key? key, required this.title,this.isLeading = false}) : super(key: key);
//   final String title;
//   final bool isLeading;
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
