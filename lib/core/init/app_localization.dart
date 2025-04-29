import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pick_champ/core/const/enums/locale_enum.dart';

@immutable
class AppLocalization extends EasyLocalization {
  AppLocalization({required super.child, super.key})
    : super(
        supportedLocales: _supportedLocales,
        path: _translationPath,
        useOnlyLangCode: true,
      );

  static final List<Locale> _supportedLocales = [
    Locales.en.locale,
    Locales.de.locale,
    Locales.fr.locale,
    Locales.ru.locale,
    Locales.tr.locale,
  ];
  static const String _translationPath = 'assets/translations';
  static Future<void> updateLanguage(
    BuildContext context, {
    required Locales value,
  }) async => context.setLocale(value.locale);
}
