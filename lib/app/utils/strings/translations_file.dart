import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// List of locales used in the application
class TranslationsFile extends Translations {
  /// List of locales used in the application
  static const listOfLocales = <Locale>[
    Locale('en'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {'en': {}};
}
