import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pact/core/utils/text_styles.dart';

class LogoPactVerticalWidget extends StatelessWidget {
  const LogoPactVerticalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/images/pact_logo.svg',
          height: 60.h,
        ),
        Text(
          'pact.',
          style: ts40Black400,
        ),
        Text(
          'Management App',
          style: ts10Black400,
        ),
      ],
    );
  }
}
