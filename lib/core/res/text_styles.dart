import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyles._();

  static final textTheme = TextTheme(
    headlineLarge: GoogleFonts.lato(
      fontWeight: FontWeight.w800,
    ),
    bodyLarge: GoogleFonts.lato(
      fontSize: 20,
    ),
  );
}
