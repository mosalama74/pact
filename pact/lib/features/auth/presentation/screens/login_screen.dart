import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/components/custom_appbar.dart';
import 'package:pact/core/components/main_elevated_btn.dart';
import 'package:pact/core/utils/extension.dart';
import 'package:pact/core/utils/text_styles.dart';
import '../../../../core/components/logo_pact_vertical_widget.dart';
import '../../../home_screen/presentation/screens/dashboard.dart';
import '../widgets/bottom_page_shape.dart';
import '../widgets/email_textff_widget.dart';
import '../widgets/password_textff_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CustomAppBar(isTitle: false,textAfterArrow: 'pact.',actions: [],), 
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
            start: 22, end: 23, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LogoPactVerticalWidget(),
              Gap(30.h),
              Text(
                'Login to your account',
                style: ts16Black500,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Gap(15.h),
              const EmailTextffWidget(),
              Gap(15.h),
              const PasswordTextffWidget(),
              Gap(240.h),//const Spacer(),
              MainElevatedButton(
                label: 'Login',
                onPressed: () {
                  context.navigateToAndRemoveAll(const DashboardScreen());
                },
              ),
              Gap(15.h),
                  
              /*
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: ts12Black400,
                  ),
                  TextButton(
                    style: const ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.zero),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign up',
                      style: ts12Black400,
                    ),
                  ),
                ],
              ), */
              const BottomPageShape(),
            ],
          ),
        ),
      ),
    );
  }
}
