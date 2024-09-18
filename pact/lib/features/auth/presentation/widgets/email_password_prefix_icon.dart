import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';

class EmailPasswordPrefixIcon extends StatelessWidget {
  const EmailPasswordPrefixIcon({super.key, required this.prefixIcon});
final String prefixIcon;
  @override

  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsetsDirectional.only(end: 20),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            width: 50.w,
            height: MediaQuery.sizeOf(context).height * 0.06,
            decoration: BoxDecoration(
              color: cPrimaryDarkColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                bottomLeft: Radius.circular(10.r),
              ),
            ),
            child: SvgPicture.asset(
              prefixIcon,
            ),
          ),
        );
  }
}