import 'package:flutter/material.dart';
import 'package:pact/core/components/custom_textff.dart';
import 'package:pact/features/auth/presentation/widgets/email_password_prefix_icon.dart';

class EmailTextffWidget extends StatelessWidget {
   const EmailTextffWidget({super.key, this.emailvalidator, this.emailController});

final String? Function(String?)? emailvalidator;
final TextEditingController? emailController;
  @override
  Widget build(BuildContext context) {
    return CustomTextff(
              hintText: 'Email',
              prefixIcon: const EmailPasswordPrefixIcon(prefixIcon: 'assets/icons/email.svg',),
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              controller: emailController,
              validator:emailvalidator,
            );
  }
}