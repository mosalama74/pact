import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: 60.h,
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r),
            topRight: Radius.circular(10.r),
          ),
        ),
      ),
      child: BottomAppBar(
        elevation: 0.0,
        color: cLightBlackdColor,
        child: Row(
          children: [
            navItem(
              'assets/icons/home.svg',
              'Home',
              pageIndex == 0,
              onTap: () => onTap(0),
            ),
            navItem(
              'assets/icons/notifications.svg',
              'Notification',
              pageIndex == 1,
              onTap: () => onTap(1),
            ),
            navItem(
              'assets/icons/profile.svg',
              'Profile',
              pageIndex == 2,
              onTap: () => onTap(2),
            ),
          ],
        ),
      ),
    );
  }

  Widget navItem(String icon, String label,bool selected,
      {Function()? onTap}) {
    return Expanded(
      child: InkWell(
          onTap: onTap,
          child: Center(
            child: Column(
              children: [
                SvgPicture.asset(
                  icon,
                  height: 24,
                  width: 24,
                  color: selected ? cNavBarIconColor : cPrimaryDarkColor,
                ),
                Text(
                  label,
                  style: ts15Primary700.copyWith(color: selected ? cNavBarIconColor : cPrimaryDarkColor),
                ),
              ],
            ),
          )),
    );
  }
}
