import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class BottomPageShape extends StatelessWidget {
  const BottomPageShape({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Container(
                height: 5.h,
                decoration:const BoxDecoration(
                  color: cLightBlackdColor,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
              ),
    );
  }
}