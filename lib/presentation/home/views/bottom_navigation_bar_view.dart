import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/core/constants/assets_constants.dart';
import '../../../infrastructure/theme/app_colors.dart';

class BottomNavigationBarView extends GetView {
  const BottomNavigationBarView({Key? key, required this.selectedIndex, this.onItemTapped}) : super(key: key);
  final int selectedIndex;
  final Function(int)? onItemTapped;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.iconHome,
            colorFilter: selectedIndex == 0
                ? const ColorFilter.mode(
                AppColors.primaryColor, BlendMode.srcIn)
                : null,
            width: 6.41.w,
            height: 2.84.h,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.iconMessage,
            colorFilter: selectedIndex == 1
                ? const ColorFilter.mode(
                AppColors.primaryColor, BlendMode.srcIn)
                : null,
            width: 6.41.w,
            height: 2.84.h,
          ),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 15.38.w,
            height: 5.92.h,
            decoration: ShapeDecoration(
              color: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                'assets/images/svg/icon_add.svg',
                width: 5.9.w,
                height: 5.9.w,
              ),
            ),
          ),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.iconProfileGray,
            colorFilter: selectedIndex == 3
                ? const ColorFilter.mode(
                AppColors.primaryColor, BlendMode.srcIn)
                : null,
            width: 6.41.w,
            height: 2.84.h,
          ),
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.iconMore,
            colorFilter: selectedIndex == 4
                ? const ColorFilter.mode(
                AppColors.primaryColor, BlendMode.srcIn)
                : null,
            width: 6.41.w,
            height: 2.84.h,
          ),
          label: 'Settings',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: (index){
        onItemTapped!(index);
      },
      type: BottomNavigationBarType.fixed,
    );
  }
}
