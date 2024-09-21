import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/components/custom_appbar.dart';
import 'package:pact/core/components/custom_text_btn.dart';
import 'package:pact/core/utils/text_styles.dart';

import '../../../../core/components/close_icon_btn.dart';
import '../widgets/members_list_view_item.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isTitle: true,
        image: 'assets/images/user.png',
        textAfterImage: 'Roger Amin.',
        onPressedActionBtn: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric( vertical: 10, horizontal: 20),
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
                CloseIconBtn(onPressed: (){},),
              ],
            ),
            Gap(10.h),
            Row(
              children: [
               Text('Members Contacts',style:ts16Black700.copyWith(fontFamily: 'DMSans'),),
                const Spacer(),
                CustomTextBtn(
                onPressed: () {  },
                btnText:'Full List' ,
                ),
              ],
            ),
            const Expanded(child: MembersListViewItem()),
          ],
        ),
      ),
    );
  }
}
