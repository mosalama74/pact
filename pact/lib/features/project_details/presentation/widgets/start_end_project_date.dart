import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/utils/app_colors.dart';

import '../../../../core/utils/date_time_formatter.dart';
import '../../../../core/utils/text_styles.dart';

class StartEndProjectDate extends StatelessWidget {
  const StartEndProjectDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Start',
                  style: ts14Black500,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SvgPicture.asset(
                  'assets/icons/calendar.svg',
                  width: 15.w,
                ),
                Text(
                  DateTimeFormatter.formattedDate(DateTime.now()),
                  style: ts12Black400.copyWith(color: cDarkGreyColor),
                ),
              ],
            ),
          ),
          Gap(10.w),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'End',
                  style: ts14Black500,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SvgPicture.asset(
                  'assets/icons/calendar.svg',
                  width: 15.w,
                ),
                Text(
                  DateTimeFormatter.formattedDate(DateTime.now()),
                  style: ts12Black400.copyWith(color: cDarkGreyColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
