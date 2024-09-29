import 'package:flutter/material.dart';
import 'package:flutter_riverpod_architecture/ui/shared/styles/colors.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum ThemeType { lightTheme, darkTheme }

abstract class _IThemeManager {
  void changeThemeType(ThemeType themeType);
  Color get primaryColor;
  Color get dark;
  Color get light;
  Color get alert;
  Color get notification;
  Color get success;
  Color get background;
  Color get secondaryTextColor;
  Color get textFieldBorderColor;
  Color get textFieldLabelColor;
  Color get disabledIconColor;
  Color get avatarBgColor;
  Color get iconColor;
  Color get dividerColor;
  Color get chatBackground;
  Color get greyTextColor;
  Duration get normalDuration;
  Duration get mediumDuration;
  BorderRadius get normalBorderRadius;
  BoxConstraints get appBoxConstraint;
  LinearGradient get mainButtonGradient;
  RadialGradient get splashBackground;
  EdgeInsets get pagePadding;
  EdgeInsets get normalHorizontalPagePadding;
  EdgeInsets get horizontalPagePadding;
  double get lowValue;
  double get normalValue;
  double get mediumValue;
  double get highValue;
  double get veryHighValue;
  Gap get lowGap;
  Gap get normalGap;
  Gap get mediumGap;
  Gap get highGap;
  Gap get veryHighGap;
  double get appBarHeight;
}

class ThemeManager extends ChangeNotifier implements _IThemeManager {
  ThemeType activeThemeType = ThemeType.lightTheme;

  @override
  void changeThemeType(ThemeType themeType) {
    activeThemeType = themeType;
    notifyListeners();
  }

  @override
  Color get primaryColor => AppColors.amaranth;

  @override
  Color get dark => AppColors.black;

  @override
  Color get light => AppColors.white;

  @override
  Color get alert => AppColors.punch;

  @override
  Color get notification => AppColors.redOrange;

  @override
  Color get background => AppColors.alabaster;

  @override
  Color get secondaryTextColor => AppColors.tundora;

  @override
  Color get textFieldBorderColor => AppColors.mischka;

  @override
  Color get textFieldLabelColor => AppColors.silver;

  @override
  Color get disabledIconColor => AppColors.graySuit;

  @override
  Color get success => AppColors.green;

  @override
  Color get avatarBgColor => AppColors.wildSand;

  @override
  Color get iconColor => AppColors.alto;

  @override
  Color get dividerColor => AppColors.gallery;

  @override
  Color get chatBackground => AppColors.roseWhite;

  @override
  Color get greyTextColor => AppColors.grey4;

  @override
  Duration get normalDuration => const Duration(milliseconds: 300);

  @override
  Duration get mediumDuration => const Duration(milliseconds: 500);

  @override
  BorderRadius get normalBorderRadius => BorderRadius.circular(30);

  @override
  BoxConstraints get appBoxConstraint => const BoxConstraints(maxWidth: 1170);

  @override
  RadialGradient get splashBackground => const RadialGradient(
        colors: [Color(0xff02B78B), Color(0xff7602D1)],
        stops: [0, 1],
        center: Alignment.topLeft,
        radius: 2,
      );

  @override
  EdgeInsets get pagePadding => horizontalPagePadding.copyWith(bottom: 24);

  @override
  EdgeInsets get normalHorizontalPagePadding =>
      EdgeInsets.symmetric(horizontal: mediumValue);

  @override
  EdgeInsets get horizontalPagePadding => const EdgeInsets.symmetric(horizontal: 30);

  @override
  LinearGradient get mainButtonGradient => const LinearGradient(
        colors: [Color(0XFF864EE2), Color(0XFF513BE7)],
      );

  @override
  double get highValue => 20;

  @override
  double get lowValue => 5;

  @override
  double get mediumValue => 15;

  @override
  double get normalValue => 10;

  @override
  double get veryHighValue => 30;

  @override
  Gap get lowGap => Gap(lowValue);

  @override
  Gap get mediumGap => Gap(mediumValue);

  @override
  Gap get normalGap => Gap(normalValue);

  @override
  Gap get highGap => Gap(highValue);

  @override
  Gap get veryHighGap => Gap(veryHighValue);

  @override
  double get appBarHeight => 70;
}

final themeProvider = ChangeNotifierProvider((_) => ThemeManager());
