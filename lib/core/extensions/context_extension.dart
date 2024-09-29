import 'package:flutter/material.dart';
import 'package:flutter_riverpod_architecture/core/constants/constants.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double responsiveWidth(double value) =>
      (value * mediaQuery.size.width) / kDesignWidth;
  double responsiveHeight(double value) =>
      (value * mediaQuery.size.height) / kDesignHeight;
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;
  double screenAwareSize(double val) =>
      (val * 1.143) * (MediaQuery.of(this).size.width / 375);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get statusBarHeight => mediaQuery.padding.top;
  double get topUnusedSpaceHeight => mediaQuery.viewPadding.top;
  double get bottomBarHeight => mediaQuery.padding.bottom;
  double get smallPaddingValue => height * 0.02216;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
}

extension PaddingExtension on BuildContext {
  EdgeInsetsGeometry get normalPadding => const EdgeInsets.all(16);
  EdgeInsetsGeometry get horizontalNormalPadding =>
      const EdgeInsets.symmetric(horizontal: 16);
}

extension ShowModalBottomSheetExtension on BuildContext {
  Future<void> showBottomSheet(
      {required Widget child, bool useRootNavigator = true}) async {
    await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      useRootNavigator: useRootNavigator,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      builder: (BuildContext context) => child,
    );
  }
}
