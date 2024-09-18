import 'package:flutter/material.dart';
import 'package:pact/core/components/custom_textff.dart';
import 'package:pact/features/auth/presentation/widgets/email_password_prefix_icon.dart';

class EmailTextffWidget extends StatelessWidget {
  const EmailTextffWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextff(
              hintText: 'Email',
              prefixIcon: EmailPasswordPrefixIcon(prefixIcon: 'assets/icons/email.svg',),
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
            );
  }
}