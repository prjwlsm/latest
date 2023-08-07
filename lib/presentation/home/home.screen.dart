import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:thatch_mobile_application/domain/core/constants/assets_constants.dart';
import 'package:thatch_mobile_application/domain/core/constants/text_constants.dart';
import 'package:thatch_mobile_application/domain/core/status/properties_status.dart';
import 'package:thatch_mobile_application/infrastructure/theme/app_colors.dart';

import '../../domain/core/views/container_icon_text_view.dart';
import '../../domain/core/views/custom_button_view.dart';
import '../../domain/core/views/custom_text_form_field.dart';
import '../../infrastructure/theme/app_text_theme.dart';
import '../../infrastructure/theme/icons_themes.dart';
import 'controllers/home.controller.dart';
import 'views/bottom_navigation_bar_view.dart';
import 'views/dashboard_header_view.dart';
import 'views/item_card_view.dart';
import 'views/no_properties_card_view.dart';
import 'views/types_properties_card_view.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
            return ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return index == 0
                    ? const DashboardHeaderView()
                    : Obx(() {
                        return controller.requests.length + controller.inProgress.length + controller.rented.length == 0
                            ? const NoPropertiesCardView()
                            : Container(
                                margin: EdgeInsets.symmetric(horizontal: 7.69.w),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 3.44.h,
                                    ),
                                    index == 1 ? TypesPropertiesCardView(properties: controller.requests, loadMore: () {
                                      controller.addRequests(4);
                                    },
                                    propertiesStatus: PropertiesStatus.requests,) :
                                    index == 2 ? TypesPropertiesCardView(properties: controller.inProgress, loadMore: (){
                                      controller.addInProgress(4);
                                    },
                                      propertiesStatus: PropertiesStatus.inProgress,) :
                                    TypesPropertiesCardView(properties: controller.rented, loadMore: (){
                                      controller.addRented(4);
                                    },
                                      propertiesStatus: PropertiesStatus.rented,),
                                  ],
                                ),
                              );
                      });
              },
              separatorBuilder: (context, index) {
                return  Opacity(
                  opacity: 0.05,
                  child: Container(
                    height: 0.5,
                    color: Colors.black
                  ),
                );
              },
              itemCount: controller.requests.length + controller.inProgress.length + controller.rented.length == 0 ? 2 : 4,
            );
          }
        ),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBarView(
          selectedIndex: controller.selectedIndex.value,
          onItemTapped: (index) {
            controller.onItemTapped(index);
          },
        );
      }),
    );
  }
}
