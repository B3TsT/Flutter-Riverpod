import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color seedColor = Color.fromARGB(255, 7, 80, 59);

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
        listTileTheme: const ListTileThemeData(iconColor: seedColor),
        textTheme: GoogleFonts.openSansTextTheme().copyWith(
          displayLarge: GoogleFonts.openSans(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: GoogleFonts.openSans(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: GoogleFonts.openSans(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          headlineLarge: GoogleFonts.openSans(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: GoogleFonts.openSans(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: GoogleFonts.openSans(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.openSans(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: GoogleFonts.openSans(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: GoogleFonts.openSans(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: GoogleFonts.openSans(
            fontSize: 16.0,
          ),
          bodyMedium: GoogleFonts.openSans(
            fontSize: 14.0,
          ),
          bodySmall: GoogleFonts.openSans(
            fontSize: 12.0,
          ),
          labelLarge: GoogleFonts.openSans(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          labelMedium: GoogleFonts.openSans(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
          labelSmall: GoogleFonts.openSans(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
