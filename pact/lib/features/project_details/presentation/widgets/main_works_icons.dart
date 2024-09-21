import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pact/core/components/custom_icon_btn.dart';
import 'package:pact/core/utils/extension.dart';
import 'package:pact/core/utils/text_styles.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/styles.dart';
import '../../../members/presentstion/screens/members_screen.dart';
import '../../../milestones/presentation/screens/milestonesScreen.dart';

class MainWorksIcons extends StatelessWidget {
  const MainWorksIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cWhiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        boxShadow: customBoxShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Main Works',
            style: ts16Black400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildItem(
                  icon: 'assets/icons/members.svg',
                  title: 'Members',
                  onPressed: () {context.navigateToAndRemoveAll(const MembersScreen());}),
               buildItem(
                  icon: 'assets/icons/orders.svg',
                  title: 'Orders',
                  onPressed: () {}),
              buildItem(
                  icon: 'assets/icons/site_diary.svg',
                  title: 'Site Diary',
                  onPressed: () {}),
              buildItem(
                  icon: 'assets/icons/milestones.svg',
                  title: 'Milestones',
                  onPressed: () {
                    context.navigateTo(const MilestonesScreen());
                  }),
              buildItem(
                  icon: 'assets/icons/attachment.svg',
                  title: 'Attachment',
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildItem(
      {String? icon, String? title, required void Function() onPressed}) {
    return Column(
      children: [
        CustomIconBtn(
          onPressed: onPressed,
          icon: icon ?? '',
        ),
        Text(
          title ?? '',
          style: ts10Black400,
        )
      ],
    );
  }
}
