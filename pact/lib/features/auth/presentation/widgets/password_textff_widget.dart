import 'package:flutter/material.dart';
import 'package:pact/core/components/custom_textff.dart';
import 'package:pact/features/auth/presentation/widgets/email_password_prefix_icon.dart';

class PasswordTextffWidget extends StatefulWidget {
  const PasswordTextffWidget({super.key, this.passwordValidator, this.passwordController});

  final TextEditingController? passwordController;
  
  final String? Function(String?)? passwordValidator;

  @override
  State<PasswordTextffWidget> createState() => _PasswordTextffWidgetState();
}

class _PasswordTextffWidgetState extends State<PasswordTextffWidget> {
      bool _isPassword = true;
  @override
  Widget build(BuildContext context) {
   
    return CustomTextff(
      hintText: 'Password',
       prefixIcon: const EmailPasswordPrefixIcon(prefixIcon: 'assets/icons/lock.svg',),
      obscureText: _isPassword,
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: togglePassword() ,
      controller: widget.passwordController,
      validator: widget.passwordValidator,
    );

    
  }
  Widget togglePassword(){
return IconButton(
        onPressed: () {
          setState(() {
            _isPassword = !_isPassword;
          });
        },
        icon: Icon(_isPassword ? Icons.remove_red_eye : Icons.visibility_off),
      );
}
}

