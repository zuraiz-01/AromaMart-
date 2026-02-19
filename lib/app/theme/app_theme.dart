import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primary = Color(0xFF1A1F2B);
  static const Color darkSurface = Color(0xFF252A33);
  static const Color lightSurface = Color(0xFFF3F4F6);

  static ThemeData get light {
    final base = ThemeData(
      colorScheme: const ColorScheme.light(
        primary: Color(0xFF151A22),
        secondary: Color(0xFF4F80E1),
        surface: Colors.white,
      ),
      scaffoldBackgroundColor: const Color(0xFFF5F5F6),
      useMaterial3: true,
    );

    return base.copyWith(
      textTheme: GoogleFonts.nunitoSansTextTheme(base.textTheme).apply(
        bodyColor: const Color(0xFF141821),
        displayColor: const Color(0xFF141821),
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xFF141821),
      ),
      dividerColor: const Color(0xFFE1E4E9),
      inputDecorationTheme: const InputDecorationTheme(
        border: UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD6DAE1)),
        ),
      ),
    );
  }

  static ThemeData get dark {
    final base = ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFF2E3648),
        secondary: Color(0xFF4F80E1),
        surface: Color(0xFF222832),
      ),
      scaffoldBackgroundColor: const Color(0xFF181D26),
      useMaterial3: true,
    );

    return base.copyWith(
      textTheme: GoogleFonts.nunitoSansTextTheme(base.textTheme).apply(
        bodyColor: const Color(0xFFEDF1F7),
        displayColor: const Color(0xFFEDF1F7),
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xFFE8EDF7),
      ),
      dividerColor: const Color(0xFF323948),
      inputDecorationTheme: const InputDecorationTheme(
        border: UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF3A4354)),
        ),
      ),
    );
  }
}
