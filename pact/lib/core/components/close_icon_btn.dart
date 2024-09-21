import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CloseIconBtn extends StatelessWidget {
  const CloseIconBtn({super.key, required this.onPressed});

final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
                  onPressed: onPressed,
                  icon: SvgPicture.asset(
                    'assets/icons/close.svg',
                    width: 17.w,
                  ),
                );
  }
}