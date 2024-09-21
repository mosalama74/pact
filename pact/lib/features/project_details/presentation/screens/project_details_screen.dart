import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/components/custom_appbar.dart';
import '../widgets/main_works_icons.dart';
import '../widgets/project_description.dart';
import '../widgets/project_details_header_widget.dart';
import '../widgets/project_status.dart';
import '../widgets/show_project_excuted_time.dart';
import '../widgets/start_end_project_date.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          isTitle: false,
          textAfterArrow: 'Project Title.',
          onPressedActionBtn: (){},
          ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            const ProjectDetailsHeaderWidget(),
            Gap(15.h),
            const ProjectStatus(),
            Gap(15.h),
            const ProjectDescription(
              headText: 'Description',
              bodyText:
                  'user interface (UI) is anything a user may interact with to use a digital product or service.',
            ),
            Gap(15.h),
            const StartEndProjectDate(),
            Gap(15.h),
            const ShowProjectExcutedTime(),
            Gap(15.h),
            const MainWorksIcons(),
          ],
        ),
      ),
    );
  }
}
