import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';
import '../Constant/Colors.dart';
import 'dark/dark_text_theme.dart';
import 'dark/dark_time_picker.dart';
import 'light/light_text_theme.dart';
import 'light/light_time_picker.dart';

class Themes {
  ThemeData currentTheme = Themes.lightsTheme;
  static ThemeData lightsTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: GlobalColors.white,
    textTheme: TextTheme(
      headline1: lheadLine1(),
      headline2: lheadLine2(),
      headline3: lheadLine3(),
      headline4: lheadLine4(),
      headline5: lheadLine5(),
      headline6: lheadLine6(),
    ),
    timePickerTheme: ltimepicker(),
    primaryColor: GlobalColors.white,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith(getColor))),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: GlobalColors.black,
    textTheme: TextTheme(
      headline1: dheadLine1(),
      headline2: dheadLine2(),
      headline3: dheadLine3(),
      headline4: dheadLine4(),
      headline5: dheadLine5(),
      headline6: dheadLine6(),
    ),
    primaryColor: GlobalColors.black,
    timePickerTheme: dtimepicker(),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith(getColor))),
  );
}
