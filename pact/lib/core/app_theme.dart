import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/app_colors.dart';

final appTheme = ThemeData(
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
);
