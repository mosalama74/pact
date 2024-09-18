import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pact/core/utils/app_colors.dart';

class CustomIconBtn extends StatelessWidget {
  const CustomIconBtn({super.key, required this.onPressed, required this.icon});

  final void Function() onPressed;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: IconButton.styleFrom(
      ),
      icon: SvgPicture.asset(
        icon,
        height: 24.h,
        color: cLightBlackdColor,fit: BoxFit.cover,
      ),
    );
  }
}
