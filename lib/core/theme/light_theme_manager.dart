import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pick_champ/core/theme/app_color_scheme.dart';
import 'package:pick_champ/core/theme/app_text_style.dart';
import 'package:pick_champ/core/theme/custom_theme.dart';

class LightThemeManager implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    indicatorColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    canvasColor: const Color(0xff4b5a60ff),
    primaryColor: Colors.teal,
    dividerColor: Colors.grey,
    cardColor: Colors.blueAccent.shade200,
    fontFamily: GoogleFonts.inter().fontFamily,
    colorScheme: AppColorScheme.lightColorScheme,
    appBarTheme: const AppBarTheme(centerTitle: false),
    textTheme: TextTheme(
      bodyLarge: AppTextStyle.headline38.copyWith(color: Colors.black),
      bodyMedium: AppTextStyle.headline34.copyWith(color: Colors.black),
      bodySmall: AppTextStyle.headline28.copyWith(color: Colors.black),
      displayLarge: AppTextStyle.headline28.copyWith(color: Colors.black),
      displayMedium: AppTextStyle.headline26.copyWith(color: Colors.black),
      displaySmall: AppTextStyle.headline24.copyWith(color: Colors.black),
      headlineLarge: AppTextStyle.headline20.copyWith(color: Colors.black),
      headlineMedium: AppTextStyle.headline18.copyWith(
        color: Colors.black,
      ),
      headlineSmall: AppTextStyle.headline16.copyWith(color: Colors.black),
      labelLarge: AppTextStyle.headline14.copyWith(color: Colors.black),
      labelMedium: AppTextStyle.headline12.copyWith(color: Colors.black),
      labelSmall: AppTextStyle.headline10.copyWith(color: Colors.black),
    ),
  );
}
