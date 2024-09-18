import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../utils/app_colors.dart';
import '../utils/text_styles.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget(
      {super.key,
      required this.isImageTitle,
      this.textAfterImage,
      this.textAfterArrow,
      this.image,
      this.onPressedActionBtn});
  final String? textAfterImage;
  final String? textAfterArrow;
  final String? image;
  final bool isImageTitle;
  final void Function()? onPressedActionBtn;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        isImageTitle
            ? Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  image ?? '',
                  width: 28.w,
                  fit: BoxFit.cover,
                ),
              )
            : IconButton(
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
        isImageTitle
            ? Text(
                textAfterImage ?? '',
                style: ts20Black600,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            : Text(
                textAfterArrow ?? '',
                style: ts24Black400,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
        
      ],
    );
  }
}
