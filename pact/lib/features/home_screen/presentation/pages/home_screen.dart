import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pact/core/components/custom_appbar.dart';
import 'package:pact/core/utils/app_colors.dart';
import 'package:pact/core/utils/text_styles.dart';
import 'package:pact/features/home_screen/presentation/widgets/list_view_projects.dart';
import '../../../../core/components/custom_textff.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(
        isTitle: true,
        
        textAfterImage: 'Roger Amin.',
        image: 'assets/images/user.png',
        onPressedActionBtn: (){},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextff(
                hintText: 'Search...',
                hintStyle: ts12Black400.copyWith(color: cSearchIconColor),
                obscureText: false,
                suffixIcon: Icon(
                  Icons.search,
                  color: cSearchIconColor,
                  size: 24.w,
                ),
                keyboardType: TextInputType.text,
              ),
              Gap(10.h),
              const ListViewProjects(),
            ],
          ),
        ),
      ),
    );
  }
}
