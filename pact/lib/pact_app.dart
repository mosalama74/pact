import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pact/core/utils/app_colors.dart';
import 'features/onBoarding/splash_screen.dart';
import 'generated/l10n.dart';

class PactApp extends StatelessWidget {
  const PactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: cWhiteColor,
            appBarTheme: const AppBarTheme(
              backgroundColor: cWhiteColor,
              elevation: 0,
              shape: Border(bottom: BorderSide(color: cLightBlackdColor, width: 1)),
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: cWhiteColor,
                statusBarIconBrightness: Brightness.dark,
              ),
            ),
            fontFamily: 'Poppins',
          ),
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
          ); 
      },
    );
  }
}