
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/domain/core/constants/assets_constants.dart';
import 'package:thatch_mobile_application/domain/core/constants/text_constants.dart';

import '../../domain/core/views/app_bar_view.dart';
import '../../domain/core/views/custom_button_view.dart';
import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/app_colors.dart';
import '../../infrastructure/theme/app_text_theme.dart';
import 'controllers/inventory_checklist.controller.dart';
import 'views/request_dialog_view.dart';

class InventoryChecklistScreen extends GetView<InventoryChecklistController> {
  const InventoryChecklistScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: customAppbar(title: TextConstants.inventoryChecklist,isLeading: true,),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: 2,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (_, count) {
          return count == 1 ? Padding(
                  padding:
                      EdgeInsets.only(left: 3.33.w, right: 4.87.w, top: 3.08.h,bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButtonView(
                          text: TextConstants.confirm,
                          icon: AppAssets.iconCheck,
                          letterSpacing: 0,
                          fontSize: 12.sp,
                          onPressed: () {
                            Get.offAllNamed(Routes.LOI,arguments: {controller.isNewUserRegistration : true});
                          },
                        ),
                      ),
                      SizedBox(
                        width: 3.08.w,
                      ),
                      SvgPicture.asset(
                        'assets/images/svg/icon_delite.svg',
                        width: 17.44.w,
                        height: 17.44.w,
                      ),
                    ],
                  ),
                )
              : Card(
                  elevation: 0,
                  color: AppColors.toggleSwitchColorBorder,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin:
                      EdgeInsets.only(left: 3.33.w, right: 4.87.w, top: 3.08.h),
                  clipBehavior: Clip.antiAlias,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: controller.items.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      final item = controller.items[index];
                      return Theme(
                        data: ThemeData(
                          dividerColor: Colors.transparent,
                          unselectedWidgetColor: Colors.black,
                          colorScheme: const ColorScheme.light(
                            primary: Colors.black,
                          ),
                        ),
                        child: ExpansionTile(
                            clipBehavior: Clip.antiAlias,
                            collapsedBackgroundColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            childrenPadding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            expandedCrossAxisAlignment: CrossAxisAlignment.end,
                            title: Text(
                              item['title'],
                              style: AppTextThemes.headline3.copyWith(
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.20,
                                  color: Colors.black),
                            ),
                            children: [
                              Container(
                                color: Colors.white,
                                child: ListView.separated(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: item["content"].length,
                                  itemBuilder:
                                      (BuildContext context, int index1) {
                                    return GestureDetector(
                                      onTap: (){
                                        Get.dialog(
                                            RequestDialogView(items: item["content"][index1],)
                                        );
                                      },
                                      child: ListTile(
                                          title: Text(item["content"][index1]["title"],
                                              style: AppTextThemes.headline5.copyWith(letterSpacing: 0))),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Container(
                                        color: Colors.grey, height: 0.2);
                                  },
                                ),
                              ),
                            ]),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(color: Colors.white, height: 2);
                    },
                  ),
                );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(height: 8.06.h);
        },
      ),
    );
  }
}
