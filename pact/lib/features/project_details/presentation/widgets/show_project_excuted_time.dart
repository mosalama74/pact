import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/utils/app_colors.dart';
import 'package:pact/core/utils/text_styles.dart';

class ShowProjectExcutedTime extends StatelessWidget {
  const ShowProjectExcutedTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      buildCalenderItem(title: 'Months',count: '0'),
      buildCalenderItem(title: 'Days',count: '12'),
      buildCalenderItem(title: 'Hours',count: '18'),
    ],);
  }

  Widget buildCalenderItem({String? title ,String? count}){
    return Container(
      width: 100.w,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cWhiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: const [
          BoxShadow(
            color: cLightGreyColor,
            spreadRadius: .0,
            blurRadius: .1,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(count ?? '0',
              style: ts40Black700,
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
          Text(title ?? '',
              style: ts14Black500,
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
