import 'package:flutter/material.dart';
import 'package:pact/core/components/custom_textff.dart';
import 'package:pact/features/auth/presentation/widgets/email_password_prefix_icon.dart';

class PasswordTextffWidget extends StatefulWidget {
  const PasswordTextffWidget({super.key});

  @override
  State<PasswordTextffWidget> createState() => _PasswordTextffWidgetState();
}

class _PasswordTextffWidgetState extends State<PasswordTextffWidget> {
  @override
  Widget build(BuildContext context) {
    bool isPassword = true;
    onpressed() {
      if(isPassword){
        setState(() {
          isPassword = false;
        });
      }else{  
        setState(() {
          isPassword = true;
        });
      }
    }
    return CustomTextff(
      hintText: 'Password',
       prefixIcon: const EmailPasswordPrefixIcon(prefixIcon: 'assets/icons/lock.svg',),
      obscureText: isPassword,
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: IconButton(
        onPressed: onpressed,
        icon: Icon(isPassword ? Icons.remove_red_eye : Icons.visibility_off),
      ),
    );
  }
}
