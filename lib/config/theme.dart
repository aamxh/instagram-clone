import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/config/constants.dart';

class MyTheme {

  MyTheme._();

  static final ThemeData dark = ThemeData.dark().copyWith(
    textTheme: MyTextTheme.dark,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(secondary: Colors.white),
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      unselectedItemColor: MyConstants.grey,
      selectedItemColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey.shade900,
        textStyle: GoogleFonts.openSans(fontWeight: FontWeight.w700, fontSize: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      ),),
  );

  static final ThemeData light = ThemeData(
    textTheme: MyTextTheme.light,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.dark(secondary: Colors.black),
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      unselectedItemColor: MyConstants.grey,
      selectedItemColor: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: MyConstants.grey,
        textStyle: GoogleFonts.openSans(fontWeight: FontWeight.w800, fontSize: 18),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),),
  );

}

class MyTextTheme {

  MyTextTheme._();

  static final TextTheme dark = TextTheme(
    headlineLarge: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
    headlineMedium: GoogleFonts.openSans(fontWeight: FontWeight.w800, fontSize: 28, color: Colors.white),
    headlineSmall: GoogleFonts.openSans(fontWeight: FontWeight.w600, fontSize: 26, color: Colors.white),
    titleLarge: GoogleFonts.openSans(fontWeight: FontWeight.w600, fontSize: 24, color: Colors.white),
    titleMedium: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 22, color: Colors.white),
    titleSmall: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.white),
    bodyLarge: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.white),
    bodyMedium: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.white),
    bodySmall: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 13, color: Colors.white),
  );

  static final TextTheme light = TextTheme(
    headlineLarge: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
    headlineMedium: GoogleFonts.openSans(fontWeight: FontWeight.w800, fontSize: 28, color: Colors.black),
    headlineSmall: GoogleFonts.openSans(fontWeight: FontWeight.w600, fontSize: 26, color: Colors.black),
    titleLarge: GoogleFonts.openSans(fontWeight: FontWeight.w600, fontSize: 24, color: Colors.black),
    titleMedium: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 22, color: Colors.black),
    titleSmall: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black),
    bodyLarge: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black),
    bodyMedium: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.black),
    bodySmall: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 13, color: Colors.black),
  );

}