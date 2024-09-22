import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pact/core/api/dio_consumer.dart';
import 'package:pact/features/auth/presentation/cubit/user_cubit.dart';
import 'core/app_theme.dart';
import 'features/onBoarding/splash_screen.dart';
import 'generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PactApp extends StatelessWidget {
  const PactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => UserCubit(DioConsumer(dio: Dio(),)),
            ),
           
          ],
          child: MaterialApp(
            theme: appTheme,
            debugShowCheckedModeBanner: false,
            locale: const Locale('en'),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            home: const SplashScreen(),
          ),
        );
      },
    );
  }
}
