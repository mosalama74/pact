import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/components/custom_text_btn.dart';
import 'package:pact/core/utils/app_colors.dart';

import '../../../../core/utils/text_styles.dart';

class ProjectDescription extends StatelessWidget {
  const ProjectDescription(
      {super.key, required this.headText, required this.bodyText});
  final String headText;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: cWhiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        boxShadow: const [
            BoxShadow(
              color: cLightGreyColor,
              spreadRadius: .0,
              blurRadius: .1,
            ),],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headText,
            style: ts16Black400,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Gap(5.h),
          Text(
            bodyText,
            style: ts14Black400.copyWith(color: cDarkGreyColor),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          Gap(5.h),
          Align(
            alignment: Alignment.bottomRight,
              child:
                  CustomTextBtn(onPressed: () {}, btnText: 'Full Description')),
        ],
      ),
    );
  }
}
