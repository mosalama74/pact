import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';

class ProjectStatus extends StatelessWidget {
  const ProjectStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/project_location.png',
                    width: 330.w,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    color: cProjectItemColor,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '47% completed',
                                  style: ts14Black400.copyWith(
                                      color: cDarkWhiteColor),
                                ),
                                Gap(5.h),
                                Image.asset(
                                  'assets/icons/loading.png',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Status',
                                  style:
                                      ts12Black500.copyWith(color: cWhiteColor),
                                ),
                                 Gap(5.w),
                                Container(
                                  width: 20.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                      color: cRedColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.r),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}