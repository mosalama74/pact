import 'package:flutter/material.dart';


class MainTextBtn extends StatelessWidget {
  const MainTextBtn(
      {super.key,
      required this.btnText,
      required this.onPressed,
      required this.btnTextStyle});

  final String btnText;
  final Function() onPressed;
  final TextStyle btnTextStyle;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          btnText,
          style: btnTextStyle, 
        ),
      ),
    );
  }
}
