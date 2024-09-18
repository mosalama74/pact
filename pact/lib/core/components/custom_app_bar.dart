import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pact/core/utils/text_styles.dart';

import '../utils/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.actions,
    this.title,
    this.height = 50,
    this.titleWidget,
    this.leading,
  });

  final List<Widget>? actions;
  final String? title;
  final double height;
  final Widget? titleWidget;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.r),
          bottomRight: Radius.circular(12.r),
        ),
      ),
      child: AppBar(
        backgroundColor: cPrimaryColor,
        centerTitle: titleWidget != null,
        leading: leading,
        title: titleWidget ??
            Text(
              title ?? '',
              style: ts16Black500.copyWith(fontWeight: FontWeight.w700),
            ),
        actions: actions,
        elevation: 0,
        toolbarHeight: 124.h,
        iconTheme: const IconThemeData(color: cWhiteColor),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h + 50);
}