import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/components/close_icon_btn.dart';
import '../../../../core/utils/text_styles.dart';

class ProjectDetailsHeaderWidget extends StatelessWidget {
  const ProjectDetailsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/projects_icon.svg',
          width: 24.w,
        ),
        Gap(5.w),
        Text(
          'Project Details',
          style: ts16Black500,
        ),
        const Spacer(),
        CloseIconBtn(
          onPressed: () {},
        ),
      ],
    );
  }
}
