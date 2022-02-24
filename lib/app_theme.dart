import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const appColor = Color(0xff7455F6);
const appDarkColor = Color(0xff17175E);
const whiteColor = Color(0xffFFFFFF);

final appTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: appColor,
  ),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: appColor,
    ),
    displayMedium: GoogleFonts.quicksand(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      color: whiteColor,
    ),
    displaySmall: GoogleFonts.quicksand(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: whiteColor,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      color: appDarkColor,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: appDarkColor,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: appDarkColor,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: appDarkColor.withOpacity(0.64),
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: whiteColor,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: whiteColor,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: appDarkColor,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: appDarkColor,
    ),
  ),
);
