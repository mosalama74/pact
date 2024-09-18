import 'package:flutter/material.dart';
import 'package:pact/core/utils/text_styles.dart';

import '../utils/app_colors.dart';

class CustomTextBtn extends StatelessWidget {
  const CustomTextBtn({super.key, required this.onPressed, required this.btnText, this.btnTextStyle});
  final void Function() onPressed;
  final String btnText;
  final TextStyle? btnTextStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(btnText,style: btnTextStyle ?? ts12Black400.copyWith(color: cPrimaryColor),),
    );
  }
}
