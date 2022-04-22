import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themeDataLight = ThemeData.light().copyWith(
  scaffoldBackgroundColor: const Color.fromARGB(255, 15, 21, 36),

  //
  textTheme: TextTheme(
    button: GoogleFonts.spaceMono(),
    bodyText1: GoogleFonts.spaceMono(),
    bodyText2: GoogleFonts.spaceMono(),
    subtitle1: GoogleFonts.spaceMono(),
    subtitle2: GoogleFonts.spaceMono(),
  ),
  //
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(color: Colors.white, fontSize: 12),
    border: InputBorder.none,
    prefixIconColor: Colors.blue,
  ),

  //
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Colors.white,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  )),
);

final ThemeData themeDataDark = ThemeData.light().copyWith(
  //
  scaffoldBackgroundColor: Colors.black,

  //
  textTheme: TextTheme(
    button: GoogleFonts.spaceMono(),
    bodyText1: GoogleFonts.spaceMono(),
    bodyText2: GoogleFonts.spaceMono(),
    subtitle1: GoogleFonts.spaceMono(),
    subtitle2: GoogleFonts.spaceMono(),
  ),
  //
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(color: Colors.white, fontSize: 12),
    border: InputBorder.none,
    prefixIconColor: Colors.black45,
  ),

  //
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Colors.white,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.black45),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  )),
);
