import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/utils/app_colors.dart';
import 'package:pact/core/utils/text_styles.dart';

import '../../../../core/utils/styles.dart';


class MemberItem extends StatelessWidget {
  const MemberItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: customBoxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/man.png',
                  height: 40.h,
                  fit: BoxFit.cover,
                ),
              ),
              Gap(5.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Jakob Siphron',
                    style: ts12Black500,
                  ),
                  Text(
                    'Jakob.Siphron@gmail.com',
                    style: ts8Black400.copyWith(color: cPrimaryColor),
                  ),
                  Text(
                    '+62 812-9875-1298',
                    style: ts10Black400,
                  ),
                ],
              ),
            ],
          ),
          Text(
            'Project Manager',
            style: ts12Black500,
          ),
        ],
      ),
    );
  }
}
