import 'package:flutter/material.dart';
import 'package:flutter_riverpod_architecture/core/init/theme_manager/theme_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeStyle {
  ThemeStyle(this.ref);
  final Ref ref;

  ThemeData get appTheme => customThemeData();

  ThemeData customThemeData() {
    final themeManager = ref.watch(themeProvider);

    AppBarTheme getAppBarTheme() => AppBarTheme(
          elevation: 50,
          backgroundColor: themeManager.light,
          foregroundColor: themeManager.dark,
          shadowColor: themeManager.dark.withOpacity(0.05),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: themeManager.primaryColor,
          ),
        );

    SliderThemeData getSliderTheme() => SliderThemeData(
          thumbColor: themeManager.primaryColor,
          activeTrackColor: themeManager.primaryColor,
          overlayColor: themeManager.primaryColor,
          overlayShape: const RoundSliderThumbShape(
            enabledThumbRadius: 8,
          ),
          thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: 8,
          ),
        );

    return ThemeData(
      primaryColor: themeManager.primaryColor,
      primaryColorLight: themeManager.primaryColor,
      primaryColorDark: themeManager.primaryColor,
      primarySwatch: Colors.green,
      appBarTheme: getAppBarTheme(),
      sliderTheme: getSliderTheme(),
      dividerColor: const Color(0xffCFCFCF),
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        displayColor: themeManager.dark,
        bodyColor: themeManager.dark,
      ),
    );
  }
}

final themeStyleProvider = Provider(ThemeStyle.new);
