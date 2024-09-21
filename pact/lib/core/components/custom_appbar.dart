import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/utils/app_colors.dart';

import '../utils/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.isTitle,
    this.textAfterImage,
    this.textAfterArrow,
    this.image,
    this.onPressedActionBtn,
    this.actions,
    this.textAfterImageStyle,
    this.textAfterArrowStyle,
  });

  final String? textAfterImage;
  final String? textAfterArrow;
  final String? image;
  final TextStyle? textAfterImageStyle;
  final TextStyle? textAfterArrowStyle;
  final void Function()? onPressedActionBtn;
  final bool isTitle;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: cWhiteColor,
      title: isTitle
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    image ?? '',
                    width: 28.w,
                    fit: BoxFit.cover,
                  ),
                ),
                Gap(5.w),
                Text(
                  textAfterImage ?? '',
                  style: textAfterImageStyle ?? ts20Black600,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          : null,
      leading: isTitle
          ? null
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: cLightBlackdColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_back, color: cWhiteColor),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Gap(5.w),
                Text(
                  textAfterArrow ?? '',
                  style: textAfterArrowStyle ?? ts24Black400,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
      actions: actions ??
          [
            IconButton(
              icon: const Icon(Icons.more_horiz, color: cLightBlackdColor),
              onPressed: onPressedActionBtn,
            ),
          ],
      leadingWidth: 200.w,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(45.h);
}
