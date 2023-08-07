import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/core/constants/assets_constants.dart';
import '../../../domain/core/constants/text_constants.dart';
import '../../../domain/core/status/properties_status.dart';
import '../../../domain/core/views/container_icon_text_view.dart';
import '../../../infrastructure/theme/app_colors.dart';
import '../../../infrastructure/theme/app_text_theme.dart';
import 'item_card_view.dart';

class TypesPropertiesCardView extends GetView {
  const TypesPropertiesCardView({Key? key, required this.properties, required this.loadMore, required this.propertiesStatus}) : super(key: key);

  final List<Map<String, dynamic>> properties;
  final Function loadMore;
  final PropertiesStatus propertiesStatus;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 0.77.w),
                  child: propertiesStatus == PropertiesStatus.requests ? SvgPicture.asset(
                    AppAssets.iconRequests,
                    width: 5.64.w,
                    height: 5.64.w,
                    colorFilter: ColorFilter.mode(
                        AppColors.textColor[60]!,
                        BlendMode.srcIn),
                  ) : propertiesStatus == PropertiesStatus.inProgress ? SvgPicture.asset(
                    AppAssets.iconInProgress,
                    width: 5.38.w,
                    height: 5.13.w,
                    colorFilter: ColorFilter.mode(
                        AppColors.textColor[60]!,
                        BlendMode.srcIn),
                  ) : SvgPicture.asset(
                    AppAssets.iconRented,
                    width: 4.62.w,
                    height: 5.64.w,
                    colorFilter: ColorFilter.mode(
                        AppColors.textColor[60]!,
                        BlendMode.srcIn),
                  ),
                ),
                SizedBox(
                  width: 2.56.w,
                ),
                Text(
                  propertiesStatus == PropertiesStatus.requests ? TextConstants.requests : propertiesStatus == PropertiesStatus.inProgress ? TextConstants.inProgress : TextConstants.rented,
                  style: AppTextThemes.headline3
                      .copyWith(
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 7.69.w,
                height: 7.69.w,
                decoration: ShapeDecoration(
                  color: AppColors.toneColor[80],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(10),
                  ),
                ),
                child: SvgPicture.asset(
                  AppAssets.iconApps,
                  width: 3.33.w,
                  height: 3.33.w,
                  fit: BoxFit.scaleDown,
                ),
              ),
              SizedBox(
                width: 1.54.w,
              ),
              ContainerIconTextView(
                assetName: AppAssets.iconFilter,
                text: TextConstants.filter,
                containerColor:
                AppColors.toneColor[80],
                opacity: 1,
                iconWidth: 3.254.w,
                iconHeight: 3.254.w,
                containerWidth: 19.49.w,
                containerHeight: 7.69.w,
                borderRadius: 10,
                textColor: AppColors.bodyColor[70],
              ),
            ],
          )
        ],
      ),
      SizedBox(height: 1.9.h,),
      properties.isEmpty ? GestureDetector(
        onTap: (){
          loadMore();
        },
        child: Container(
          width: 331,
          height: 59,
          decoration: ShapeDecoration(
            color: AppColors.bodyColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: Center(
            child: Text(
              TextConstants.thereAreNoPropertiesHere,
              textAlign: TextAlign.center,
              style: AppTextThemes.body.copyWith(color: AppColors.bodyColor[70],fontWeight: FontWeight.w700,letterSpacing: -0.12)
            ),
          ),
        ),
      ): Column(
        children: [
          ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: properties.length,
            itemBuilder:
                (BuildContext context, int index1) {
              return ItemCardView(propertiesStatus: propertiesStatus,);
            },
            separatorBuilder: (context, index) {
              return Container(
                  color: Colors.white, height: 1.07.h);
            },
          ),
          Opacity(
            opacity: 0.50,
            child: GestureDetector(
              onTap: (){
                loadMore();
              },
              child: Container(
                margin: EdgeInsets.only(top: 1.07.h),
                width: 26.67.w,
                height: 8.72.w,
                decoration: ShapeDecoration(
                  color: AppColors.inputDecorationBorderSideColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child:  Center(
                  child: Text(
                    'Load More',
                    style: AppTextThemes.body.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),),
        ],
      ),

      SizedBox(
        height: 2.302.h,
      ),
    ],
    );
  }
}
