import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pact/features/home_screen/presentation/widgets/list_project_item.dart';

class ListViewProjects extends StatelessWidget {
  const ListViewProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const ListProjectItem(),
        separatorBuilder: (context, index) =>  SizedBox(height:10.h),
        itemCount: 10);
  }
}
