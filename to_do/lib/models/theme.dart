import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        splashColor: Colors.white.withOpacity(0.25),
        backgroundColor: Color(0xff2b2920),
      ),
      bottomAppBarColor: Color(0xff2b2920),
      inputDecorationTheme: InputDecorationTheme(),
      iconTheme: IconThemeData(
        color: Colors.black45,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            primary: Colors.white38, backgroundColor: Color(0xff2b2920)),
      ),
      scaffoldBackgroundColor: Color(0xffefe9d0),
      colorScheme: ColorScheme.light().copyWith(
        onPrimaryContainer: Color(0xff2b2920),
      ),
      appBarTheme: AppBarTheme(
        toolbarTextStyle: TextStyle(
          fontWeight: FontWeight.w900,
        ),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w900,
        ),
        backgroundColor: Color(0xffbcb79f),
      ));

  // static ThemeData darkTheme = ThemeData(
  //     iconTheme: IconThemeData(
  //       color: Colors.white,
  //     ),
  //     textButtonTheme: TextButtonThemeData(
  //       style: TextButton.styleFrom(
  //           primary: Colors.white, backgroundColor: Colors.lightBlueAccent),
  //     ),
  //     scaffoldBackgroundColor: Colors.black,
  //     colorScheme: ColorScheme.dark(),
  //     appBarTheme: AppBarTheme());
}
