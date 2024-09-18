import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pact/core/utils/text_styles.dart';


class CustomTextff extends StatelessWidget {
  const CustomTextff({
    super.key,
    this.prefixIcon,
    required this.hintText,
    required this.obscureText,
    this.controller,
    this.keyboardType,
    this.validator,
    this.onTap,
    this.onChanged,
    this.suffixIcon, this.hintStyle,
  });
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        hintText: hintText,
        hintStyle:hintStyle?? ts12Black400.copyWith(
          color: const Color(0xff30637C),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
