import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/domain/core/constants/assets_constants.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_colors.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_text_theme.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_themes.dart';

import '../../domain/core/constants/text_constants.dart';
import '../../domain/core/views/container_icon_text_view.dart';
import 'controllers/property_details.controller.dart';

class PropertyDetailsScreen extends GetView<PropertyDetailsController> {
  const PropertyDetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light
    ));
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('PropertyDetailsScreen'),
      //   centerTitle: true,
      // ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: 100.w,
              height: 19.19.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.ibb.co/v17QsPJ/image-2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 6.28.h,
            child: Container(
              width: 100.w,
              height: 13.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Colors.white.withOpacity(0), Colors.white],
                ),
              ),
            ),
          ),
          Positioned(
              top: 6.28.h,
              left: 3.79.w,
              child:Column(
                children: [
                  Container(
                    child: SvgPicture.asset(
                     AppAssets.iconBackTransparent,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // BoxShape.circle or BoxShape.retangle
                      //color: const Color(0xFF66BB6A),
                      boxShadow: [BoxShadow(
                        color: Colors.black,
                        blurRadius: 20.0,
                      ),]
                      ,
                  ),
                  )
                ],
              ),
          ),
          Positioned(
            top: 15.64.h,
            left: 0,
              right: 0,
              bottom: 0,

              child: Column(
                children: [
                  Container(

                    margin: EdgeInsets.only(right: 6.92.w,left: 7.18.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                    ContainerIconTextView(
                      assetName: AppAssets.iconInProgress,
                      text: TextConstants.inProgress,
                      containerColor: AppColors.yellowColor,
                      colorFilter: Colors.black,
                      iconWidth: 3.59.w,
                      iconHeight: 3.33.w,
                      opacity:  0.50,
                      fontSize: 6.67.sp,
                    ),
                  SizedBox(height: 2.01,),

                  Text(
                    '10 Holland Road, #09-04',
                    style: AppTextThemes.textStyle28.copyWith(color: Colors.black),
                  ),
                  SizedBox(height: 0.47.h,),
                  Text(
                    'Leedon Heights ',
                    style: AppTextThemes.headline2.copyWith(color: Colors.black),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 2.84.h),
                    // height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                              Expanded(child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                  AppAssets.iconLocation,
                                    width: 2.56.w,
                                    height: 3.144.w,
                                ),
                                  SizedBox(width: 1.79.w,),
                                  Expanded(child: Text('10 Holland Road, #09-04, Leedon Heights, S267951', style: AppTextThemes.bodySmall.copyWith(fontWeight: FontWeight.w700,color: AppColors.bodyColor[70],letterSpacing: 0),)),
                                ],
                              )),
                        SizedBox(width: 6.41.w,),
                        Expanded(child: Column(

                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AppAssets.iconSwft,
                                  width: 2.969.w,
                                  height: 2.785.w,
                                ),
                                SizedBox(width: 3.w,),
                                Text('1080 swft',style: AppTextThemes.bodySmall.copyWith(fontWeight: FontWeight.w700,color: AppColors.bodyColor[70]),),
                              ],
                            ),
                            // Spacer(),
                            SizedBox(height: 3.5.w,),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AppAssets.iconHelperRoom,
                                  // width:3.59.w,
                                  // height: 3.59.w,
                                ),
                                SizedBox(width:2.159.w,),
                                Text('1 Helper room',style: AppTextThemes.bodySmall.copyWith(fontWeight: FontWeight.w700,color: AppColors.bodyColor[70]),),
                              ],
                            ),
                          ],
                        )),
                        SizedBox(width: 6.41.w,),
                        Expanded(child: Column(

                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AppAssets.iconBed,
                                  width: 3.59.w,
                                  height: 3.59.w,
                                ),
                                SizedBox(width: 2.6.w,),
                                Text('2 Bedrooms',style: AppTextThemes.bodySmall.copyWith(fontWeight: FontWeight.w700,color: AppColors.bodyColor[70]),),
                              ],
                            ),
                            SizedBox(height: 3.w,),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AppAssets.iconBathrooms,
                                  width:3.59.w,
                                  height:3.59.w,
                                ),
                                SizedBox(width:2.159.w,),
                                Text('3 Bathrooms',style: AppTextThemes.bodySmall.copyWith(fontWeight: FontWeight.w700,color: AppColors.bodyColor[70]),),
                              ],
                            ),
                          ],
                        )),



                      ],
                    ),
                  ),
                  SizedBox(height: 4.755.h,),
                  Row(
                    children: [
                      Expanded(
                        child: ContainerIconTextView(
                          assetName: AppAssets.iconTimePast,
                          text: TextConstants.updateStatus,
                          containerColor: AppColors.primaryColor,
                          iconWidth: 4.87.w,
                          iconHeight: 4.87.w,
                          fontSize: 8.00.sp,
                          horizontalPadding: 4.36.w,
                          containerHeight: 12.31.w,
                        ),
                      ),
                      SizedBox(width: 2.31.w,),
                      Expanded(
                        child: ContainerIconTextView(
                          assetName: AppAssets.iconAddressBook,
                          text: TextConstants.newContract,
                          containerColor: AppColors.primaryColor,
                          iconWidth: 4.87.w,
                          iconHeight: 4.87.w,
                          fontSize: 8.00.sp,
                          horizontalPadding: 4.36.w,
                          containerHeight: 12.31.w,
                        ),
                      ),
                      SizedBox(width: 2.31.w,),
                      Expanded(
                        child: ContainerIconTextView(
                          assetName: AppAssets.iconServiceRequest,
                          text: TextConstants.updateStatus,
                          containerColor: AppColors.primaryColor,
                          containerHeight: 12.31.w,
                          iconWidth: 4.87.w,
                          iconHeight: 4.87.w,
                          horizontalPadding: 4.36.w,
                          fontSize: 8.00.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.79.w,),
                  Row(
                    children: [
                      Expanded(
                        child: ContainerIconTextView(
                          assetName: AppAssets.iconTimePast,
                          text: TextConstants.currentTenant,
                          containerColor: AppColors.primaryColor,
                          iconWidth: 4.87.w,
                          iconHeight: 4.87.w,
                          fontSize: 8.00.sp,
                          horizontalPadding: 4.36.w,
                          containerHeight: 12.31.w,
                        ),
                      ),
                      SizedBox(width: 2.31.w,),
                      Expanded(
                        child: ContainerIconTextView(
                          assetName: AppAssets.iconTimePast,
                          text: TextConstants.documents,
                          containerColor: AppColors.primaryColor,
                          iconWidth: 4.87.w,
                          iconHeight: 4.87.w,
                          fontSize: 8.00.sp,
                          horizontalPadding: 2.56.w,
                          containerHeight: 12.31.w,
                        ),
                      ),
                      SizedBox(width: 2.31.w,),
                      Expanded(
                        child: ContainerIconTextView(
                          assetName: AppAssets.iconTimePast,
                          text: TextConstants.editProperty,
                          containerColor: AppColors.primaryColor,
                          containerHeight: 12.31.w,
                          iconWidth: 4.87.w,
                          iconHeight: 4.87.w,
                          horizontalPadding: 4.36.w,
                          fontSize: 8.00.sp,
                        ),
                      ),
                    ],
                  )
            ],
          ),
                  ),
                  SizedBox(),
                  //

                  Opacity(
                    opacity: 0.05,
                    child: Container(
                        margin: EdgeInsets.only(top: 2.61.h,bottom: 1.66.w),
                        height: 1.5,
                        color: Colors.black
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 6.92.w,left: 7.18.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(TextConstants.gallery, style: AppTextThemes.headline4.copyWith(color: Colors.black, letterSpacing: 0, fontWeight: FontWeight.w700),),
                        const SizedBox(height: 5,),
                        SizedBox(
                          height: 20.77.w,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 30.792.w,
                                height: 20.77.w,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage("https://i.ibb.co/v17QsPJ/image-2.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 2.56.w,);
                            },
                            itemCount: 5,
                          ),
                        ),
                        SizedBox(height: 3.91.w,),
                        Text(TextConstants.rent,style: AppTextThemes.body.copyWith(color: AppColors.toneColor[90],fontWeight: FontWeight.w700),),
                    Row(
                      children: [
                        Text(
                          'S\$8,800',
                          style: GoogleFonts.poppins(
                            // height: 0.80,
                            height: 1,
                              fontSize: 25.33.sp,
                              fontWeight: FontWeight.w400,
                              // letterSpacing: 0
                          ),
                        ),
                        Text(
                          ' /mo',
                          style: GoogleFonts.poppins(
                            // height: 0.40,
                              fontSize: 21.33.sp,
                              fontWeight: FontWeight.w400,
                              // letterSpacing: 0
                          ),
                        ),
                      ],
                    ),
                        Text('SGD',style: AppTextThemes.headline4.copyWith(
                          color: AppColors.bodyColor[70]

                        ),)
                      ],
                    ),
                  )

                ],
              ))
        ],
      ),
    );
  }
}
