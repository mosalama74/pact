import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/utils/app_colors.dart';
import 'package:pact/core/utils/extension.dart';
import 'package:pact/core/utils/text_styles.dart';
import 'package:pact/features/auth/presentation/screens/login_screen.dart';

import '../../core/components/main_elevated_btn.dart';
import '../auth/presentation/widgets/bottom_page_shape.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
            top: 20, bottom: 10, start: 34.55, end: 34.45),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/pact_logo.svg',
                  height: 60.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'pact.',
                  style: ts40Black400,
                ),
              ],
            ),
            Gap(5.h),
            SvgPicture.asset('assets/images/intro_screen_img.svg'),
            Gap(5.h),
            Text(
              'Easy Time Management',
              style: ts16Black500,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Gap(5.h),
            Text(
              'With management based on priority & daily tasks, it will give you convenience in managing tasks that must be done first.Time management and the determination of more important tasks will give your job statistics better and always improve',
              style: ts14Black400.copyWith(color: cLightGreyColor),
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            Gap(5.h),
            SvgPicture.asset('assets/images/intro_screen_bottom_img.svg'),
            MainElevatedButton(
              label: 'Get Started',
              onPressed: () {
                context.navigateTo(const LoginScreen());
              },
            ),
            Gap(5.h),
            Text(
              'You are about starting pact. experience',
              style: ts12Black400,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Gap(7.h),
            const BottomPageShape(),
          ],
        ),
      ),
    );
  }
}
