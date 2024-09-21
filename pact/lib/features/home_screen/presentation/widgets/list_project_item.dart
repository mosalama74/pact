import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/utils/app_colors.dart';
import 'package:pact/core/utils/extension.dart';
import 'package:pact/core/utils/styles.dart';
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
          boxShadow: customBoxShadow,
          ),
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
                        mainWorks(),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget mainWorks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset('assets/icons/attachment.svg',color: cDarkWhiteColor,),
        SvgPicture.asset('assets/icons/orders.svg',color: cDarkWhiteColor,),
        SvgPicture.asset('assets/icons/milestones.svg',color: cDarkWhiteColor,),
        SvgPicture.asset('assets/icons/site_diary.svg',color: cDarkWhiteColor,),
        SvgPicture.asset('assets/icons/members.svg',color: cDarkWhiteColor,),
        Text(
          DateTimeFormatter.formattedDate(DateTime.now()),
          style: ts8DarkWhite400,
        ),
      ],
    );
  }
}
