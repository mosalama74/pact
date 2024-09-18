import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/custom_app_bar_widget.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBarWidget(
          isImageTitle: false,
          textAfterArrow: 'Project Title.',
        ),
                leadingWidth: 200.w,

      ),
    );
  }
}
