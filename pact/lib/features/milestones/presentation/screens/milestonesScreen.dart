import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/utils/app_colors.dart';

import '../../../../core/components/close_icon_btn.dart';
import '../../../../core/components/custom_appbar.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../../../core/utils/text_styles.dart';

class MilestonesScreen extends StatelessWidget {
  const MilestonesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isTitle: false,
      textAfterArrow:  DateTimeFormatter.formattedDate(DateTime.now()),
      textAfterArrowStyle: ts12Black400.copyWith(color: cGreyColor),
        onPressedActionBtn: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/members2.svg',
                  width: 20.w,
                ),
                Gap(5.w),
                Text(
                  'Members',
                  style: ts16Black500.copyWith(fontFamily: 'DMSans'),
                ),
                const Spacer(),
                CloseIconBtn(
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
