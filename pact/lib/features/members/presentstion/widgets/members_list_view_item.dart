import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pact/features/members/presentstion/widgets/member_item.dart';

class MembersListViewItem extends StatelessWidget {
  const MembersListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const MemberItem(),
        separatorBuilder: (context, index) => SizedBox(
          height: 5.h,
        ),
        itemCount: 10);
  }
}
