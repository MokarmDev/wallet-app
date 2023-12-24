import 'package:flutter/material.dart';
import 'package:wallet_app/themes/colors.dart';

class MyAppThemes {
  static final lightTheme = ThemeData(
    primaryColor: MyColor.lightBlue,
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: MyColor.darkPurpleColor),
  );

  static final darkTheme = ThemeData(
    primaryColor: MyColor.darkBlue,
    brightness: Brightness.dark,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: MyColor.darkPurpleColor),
  );
}
