import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTheme {
  // Brand colors
  static const Color background = Color(0xFF081426);
  static const Color primary = Color(0xFFF17754);
  static const Color secondary = Color(0xFFFFBC90);
  static const Color lightAccent = Color(0xFFFFE4BC);

  // Surface colors
  static const Color surface1 = Color(0xFF0D1A2C);
  static const Color surface2 = Color(0xFF122038);
  static const Color surface3 = Color(0xFF17253E);

  // Text colors
  static const Color textPrimary = Color(0xFFF8FAFC);
  static const Color textSecondary = Color(0xFFAAB5C5);
  static const Color textMuted = Color(0xFF7F8A9A);

  // Supporting colors
  static const Color borderSubtle = Color(0x14FFFFFF);
  static const Color overlayWarm = Color(0x24F17754);
  static const Color error = Color(0xFFFF6B6B);

  // Shared spacing values
  static const double spacingSmall = 8;
  static const double spacingMedium = 16;
  static const double spacingLarge = 24;
  static const double spacingExtraLarge = 48;
  static const double sectionSpacing = 120;

  // Shared corner radii
  static const double radiusSmall = 10;
  static const double radiusMedium = 16;
  static const double radiusLarge = 24;

  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: background,
      colorScheme: _colorScheme,
      textTheme: _textTheme,

      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
      ),

      cardTheme: const CardThemeData(
        color: surface1,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radiusMedium)),
          side: BorderSide(color: borderSubtle),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          foregroundColor: background,
          backgroundColor: primary,
          minimumSize: const Size(0, 52),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: GoogleFonts.manrope(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSmall),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: textPrimary,
          minimumSize: const Size(0, 52),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          side: const BorderSide(color: borderSubtle),
          textStyle: GoogleFonts.manrope(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSmall),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: textSecondary,
          textStyle: GoogleFonts.manrope(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surface1,
        hintStyle: GoogleFonts.manrope(color: textMuted),
        labelStyle: GoogleFonts.manrope(color: textSecondary),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 18,
        ),
        border: _inputBorder,
        enabledBorder: _inputBorder,
        focusedBorder: _inputBorder.copyWith(
          borderSide: const BorderSide(color: primary),
        ),
        errorBorder: _inputBorder.copyWith(
          borderSide: const BorderSide(color: error),
        ),
      ),

      dividerTheme: const DividerThemeData(
        color: borderSubtle,
        thickness: 1,
        space: 1,
      ),

      iconTheme: const IconThemeData(color: textPrimary),

      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: primary,
        selectionColor: overlayWarm,
        selectionHandleColor: primary,
      ),

      scrollbarTheme: ScrollbarThemeData(
        interactive: true,
        radius: const Radius.circular(12),
        mainAxisMargin: 8,
        crossAxisMargin: 3,
        minThumbLength: 48,

        thickness: WidgetStateProperty.resolveWith<double?>((states) {
          if (states.contains(WidgetState.hovered) ||
              states.contains(WidgetState.dragged)) {
            return 8;
          }

          return 6;
        }),

        thumbColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.dragged)) {
            return AppTheme.primary;
          }

          if (states.contains(WidgetState.hovered)) {
            return AppTheme.primary.withAlpha(210);
          }

          return AppTheme.primary.withAlpha(105);
        }),

        trackVisibility: WidgetStateProperty.all(false),
      ),
    );
  }

  static const ColorScheme _colorScheme = ColorScheme.dark(
    primary: primary,
    onPrimary: background,
    secondary: secondary,
    onSecondary: background,
    tertiary: lightAccent,
    onTertiary: background,
    error: error,
    onError: textPrimary,
    surface: surface1,
    onSurface: textPrimary,
    surfaceContainerLow: surface1,
    surfaceContainer: surface2,
    surfaceContainerHigh: surface3,
    onSurfaceVariant: textSecondary,
    outline: borderSubtle,
    outlineVariant: borderSubtle,
  );

  static final TextTheme _textTheme = TextTheme(
    displayLarge: GoogleFonts.sora(
      fontSize: 72,
      fontWeight: FontWeight.w700,
      height: 1.05,
      letterSpacing: -2,
      color: textPrimary,
    ),
    displayMedium: GoogleFonts.sora(
      fontSize: 56,
      fontWeight: FontWeight.w700,
      height: 1.1,
      letterSpacing: -1.5,
      color: textPrimary,
    ),
    displaySmall: GoogleFonts.sora(
      fontSize: 44,
      fontWeight: FontWeight.w700,
      height: 1.1,
      color: textPrimary,
    ),
    headlineLarge: GoogleFonts.sora(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      height: 1.2,
      color: textPrimary,
    ),
    headlineMedium: GoogleFonts.sora(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      height: 1.2,
      color: textPrimary,
    ),
    headlineSmall: GoogleFonts.sora(
      fontSize: 26,
      fontWeight: FontWeight.w600,
      height: 1.25,
      color: textPrimary,
    ),
    titleLarge: GoogleFonts.sora(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: textPrimary,
    ),
    titleMedium: GoogleFonts.manrope(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: textPrimary,
    ),
    titleSmall: GoogleFonts.manrope(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: textPrimary,
    ),
    bodyLarge: GoogleFonts.manrope(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      height: 1.7,
      color: textSecondary,
    ),
    bodyMedium: GoogleFonts.manrope(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.65,
      color: textSecondary,
    ),
    bodySmall: GoogleFonts.manrope(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: textMuted,
    ),
    labelLarge: GoogleFonts.manrope(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: textPrimary,
    ),
    labelMedium: GoogleFonts.jetBrainsMono(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: secondary,
    ),
    labelSmall: GoogleFonts.jetBrainsMono(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: textMuted,
    ),
  );

  static const OutlineInputBorder _inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(radiusSmall)),
    borderSide: BorderSide(color: borderSubtle),
  );
}
