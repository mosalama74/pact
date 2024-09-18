import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pact/core/utils/app_colors.dart';
import 'package:pact/core/utils/text_styles.dart';

class MainElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final bool enabled;
  final bool isLoading;
  final TextStyle? style;
  final Widget? loadingIndicatorWidget;
  const MainElevatedButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.isLoading = false,
    this.enabled = true,
    this.style,
    this.loadingIndicatorWidget,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(
              MediaQuery.of(context).size.width,
              46.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(10.r),
            ),
            backgroundColor: cLightBlackdColor,
            disabledBackgroundColor: cLightBlackdColor.withOpacity(.5)),
        onPressed: enabled ? onPressed : null,
        child: isLoading
            ? Center(
                child:
                    loadingIndicatorWidget ?? const CircularProgressIndicator())
            : FittedBox(
                child: Text(
                  label,
                  style: style ?? ts14Black400.copyWith(color: cWhiteColor),maxLines: 1,overflow: TextOverflow.ellipsis,
                ),
              ),
      );
}
