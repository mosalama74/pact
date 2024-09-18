import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/utils/app_colors.dart';
import 'package:pact/core/utils/extension.dart';
import 'package:pact/core/utils/text_styles.dart';

import '../../../../core/components/custom_text_btn.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../../project_details/presentation/screens/project_details_screen.dart';

class ListProjectItem extends StatelessWidget {
  const ListProjectItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: cWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
          boxShadow: const [
            BoxShadow(
              color: cLightGreyColor,
              spreadRadius: .0,
              blurRadius: .1,
            ),
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Project Title.',
                style: ts16Black500,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              CustomTextBtn(
                btnText: 'Open Project',
                btnTextStyle: ts12Black400.copyWith(
                  color: cPrimaryColor,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: cPrimaryColor,
                ),
                onPressed: () {
                  context.navigateTo(const ProjectDetailsScreen());
                },
              ),
            ],
          ),
          Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/project_img.png',
                    width: 330.w,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    color: cProjectItemColor,
                    height: 65.h,
                    child: Column(
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
                                Gap(4.h),
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
                        Gap(5.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/icons/attachment.png'),
                            Image.asset('assets/icons/orders.png'),
                            Image.asset('assets/icons/milestones.png'),
                            Image.asset('assets/icons/site_diary.png'),
                            Image.asset('assets/icons/members.png'),
                            Text(
                              DateTimeFormatter.formattedDate(DateTime.now()),
                              style: ts8DarkWhite400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
