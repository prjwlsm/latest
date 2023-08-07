import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/core/constants/assets_constants.dart';
import '../../../domain/core/constants/text_constants.dart';
import '../../../domain/core/status/properties_status.dart';
import '../../../domain/core/views/custom_button_view.dart';
import '../../../infrastructure/theme/app_colors.dart';
import '../../../infrastructure/theme/app_text_theme.dart';

class ItemCardView extends GetView {
  const ItemCardView({Key? key, required this.propertiesStatus}) : super(key: key);

  final PropertiesStatus propertiesStatus;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // Get.dialog(
        //     // RequestDialogView(items: item["content"][index1],)
        // );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 12, vertical: 12),
        width: 84.87.w,
        decoration: ShapeDecoration(
          color: AppColors.bodyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Stack(
                children: [

                  Container(
                    width: 26.92.w,
                    height: 18.72.w,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://i.ibb.co/v17QsPJ/image-2.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(6)),
                    ),
                  ),
                   Visibility(
                     visible: propertiesStatus == PropertiesStatus.requests,
                     child: Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      // top: 14.041.w,
                      child: Container(
                        width: 20.64,
                        height: 5.w,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: const Alignment( -1.00,0.00,),
                            end: const Alignment(0, 1),
                            colors: [Colors.black, Colors.black.withOpacity(0)],
                          ),
                          shape:  const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                          ),

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppAssets.iconComment,
                              width: 3.067.w,
                              height: 3.067.w,
                            ),
                            Text('2 Requests',style: AppTextThemes.bodySmall.copyWith(letterSpacing: 0,fontWeight: FontWeight.w700,color: Colors.white,),),
                          ],
                        ),
                      ),
                  ),
                   ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('87 Anchorvale Cres, #09-05',
                      style:
                      AppTextThemes.body.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                  SizedBox(height: 1.28.w,),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppAssets.iconLocation,
                        width: 2.3.w,
                        height: 2.6.w,
                      ),
                      Text(
                        'Holland',
                        style:  AppTextThemes.bodySmall.copyWith(
                            color: AppColors.bodyColor[70],
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.79.w,),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppAssets.iconBathrooms,
                        width: 2.31.w,
                        height: 2.31.w,
                      ),
                      SizedBox(width: 0.77.w,),
                      Text(
                        '2 Bedrooms',
                        style:  AppTextThemes.bodyXSmall.copyWith(
                            color: AppColors.bodyColor[70],
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(width: 1.28.w,),
                      SvgPicture.asset(
                        AppAssets.iconBed,
                        width: 2.31.w,
                        height: 2.05.w,
                      ),
                      SizedBox(width: 0.77.w,),
                      Text(
                        '2 Bedrooms',
                        style:  AppTextThemes.bodyXSmall.copyWith(
                            color: AppColors.bodyColor[70],
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  SizedBox(
                    width: 23.08.w,
                    height: 7.69.w,
                    child: CustomButtonView(
                      icon: AppAssets.iconEdit,
                      iconSize: 2.921.w,
                      iconSpacing: 1.459.w,
                      text: TextConstants.editDetails,
                      fontSize: 6.67.sp,
                      onPressed: () {},
                      letterSpacing: 0,
                      fontWeight: FontWeight.w700,
                      elevation: 0,
                    ),
                  ),
                  SizedBox(
                    height: 0.77.w,
                  ),
                  SizedBox(
                    width: 23.08.w,
                    height: 7.69.w,
                    child: CustomButtonView(
                      icon: AppAssets.iconTrash,
                      iconSize: 2.921.w,
                      iconSpacing: 1.459.w,
                      backgroundColor: AppColors
                          .inputDecorationBorderSideColor,
                      text: TextConstants.editDetails,
                      fontSize: 6.67.sp,
                      onPressed: () {},
                      letterSpacing: 0,
                      fontWeight: FontWeight.w700,
                      elevation: 0,
                      textColor: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
