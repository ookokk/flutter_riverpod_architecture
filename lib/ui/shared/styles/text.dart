import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {

  // caption
  static TextStyle caption = _getTextStyle(12, FontWeight.w400);

  static TextStyle captionMedium = _getTextStyle(12, FontWeight.w500);

  static TextStyle captionBold = _getTextStyle(12, FontWeight.w700);

  // body1
  static TextStyle body1 = _getTextStyle(16, FontWeight.w400);

  static TextStyle body1Medium = _getTextStyle(16, FontWeight.w500);

  static TextStyle body1Bold = _getTextStyle(16, FontWeight.w700);

  // body2
  static TextStyle body2 = _getTextStyle(14, FontWeight.w400);

  static TextStyle body2Medium = _getTextStyle(14, FontWeight.w500);

  static TextStyle body2SemiBold = _getTextStyle(14, FontWeight.w600);

  static TextStyle body2Bold = _getTextStyle(14, FontWeight.w700);

  // buttonText
  static TextStyle buttonText = _getTextStyle(15, FontWeight.w400);

  static TextStyle buttonTextBold = _getTextStyle(15, FontWeight.w500);

  // headline
  static TextStyle headline = _getTextStyle(18, FontWeight.w400);

  static TextStyle headlineMedium = _getTextStyle(18, FontWeight.w500);

  static TextStyle headlineBold = _getTextStyle(18, FontWeight.w700);

  // title3
  static TextStyle appBarHeader = _getTextStyle(19, FontWeight.w500);

  // title3
  static TextStyle title3 = _getTextStyle(20, FontWeight.w400);

  static TextStyle title3SemiBold = _getTextStyle(20, FontWeight.w500);

  static TextStyle title3Bold = _getTextStyle(20, FontWeight.w700);

  // title2
  static TextStyle title2 = _getTextStyle(22, FontWeight.w400);

  static TextStyle title2Bold = _getTextStyle(22, FontWeight.w700);

  // title1
  static TextStyle title1 = _getTextStyle(24, FontWeight.w400);

  static TextStyle title1SemiBold = _getTextStyle(24, FontWeight.w500);

  static TextStyle title1Bold = _getTextStyle(24, FontWeight.w700);

  // large title
  static TextStyle largeTitle = _getTextStyle(34, FontWeight.w400);

  static TextStyle largeTitleBold = _getTextStyle(34, FontWeight.w700);

  // normal title
  static TextStyle normalTitle = _getTextStyle(24, FontWeight.w600);


  static TextStyle _getTextStyle(
    double fontSize,
    FontWeight fontWeight,
  ) =>
      GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: 1.5,
      );


}