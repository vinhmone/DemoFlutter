import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventTheme {
  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline1: GoogleFonts.bubblegumSans(
      fontSize: 24.0,
      fontWeight: FontWeight.w800,
      color: Colors.black,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w800,
      color: Colors.black,
    ),
    headline3: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline6: GoogleFonts.openSans(
      fontSize: 12.0,
      fontWeight: FontWeight.w200,
      color: Colors.black,
    ),
  );

  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.bubblegumSans(
      fontSize: 24.0,
      fontWeight: FontWeight.w800,
      color: Colors.white,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    headline3: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline6: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
  );
}
