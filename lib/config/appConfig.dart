import 'package:flutter/material.dart';

class AppConfig {
  ThemeData themeData = ThemeData(
    fontFamily: "Circular",
    primaryColorLight: primary,
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: pureWhite,
        fontSize: 58,
        fontWeight: FontWeight.w900,
        fontFamily: "Frank Ruhl",
        height: 1.5,
      ),
      headline2: TextStyle(
        color: black,
        fontSize: 32,
        fontWeight: FontWeight.w900,
        height: 1.5,
      ),
      headline3: TextStyle(
        color: black,
        fontSize: 24,
        fontWeight: FontWeight.w900,
        height: 1.5,
      ),
      headline4: TextStyle(
        color: black,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.5,
      ),
      headline5: TextStyle(
        color: black40,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
      headline6: TextStyle(
        color: black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
      subtitle1: TextStyle(
        color: black40,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    ),
    scaffoldBackgroundColor: pureWhite,
    primaryColor: primary,
  );
}

const Color primary = Color(0xFF5D0CE1);
const Color darkPrimary = Color(0xFF32027E);
const Color blue = Color(0xFF29A4EC);
const Color highlight = Color(0xFFF26014);
const Color warning = Color(0xFFF25214);
const Color good = Color(0xFF1CD5CF);
const Color pureWhite = Color(0xFFFFFFFF);
const Color pureWhite30 = Color(0x4cFFFFFF);
const Color black = Color(0xFF25265E);
const Color black40 = Color(0x6625265E);
const Color black70 = Color(0xB225265E);
const Color shadow = Color(0x1E001847);
