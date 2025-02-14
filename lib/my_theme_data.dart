import 'dart:ui';

import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = const Color(0xffFFFFFF);
  static Color darkColor = const Color(0xff121312);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkColor,
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: Color(0xff282A28),
      unselectedItemColor: Colors.white,
      selectedItemColor:  Color(0xffF6BD00),
      type: BottomNavigationBarType.fixed,
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w700, color: primaryColor),
      titleMedium: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w700, color: primaryColor),
      titleLarge: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w700, color: primaryColor),
      bodySmall: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w700, color: primaryColor),
      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: primaryColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: primaryColor,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData();
}
