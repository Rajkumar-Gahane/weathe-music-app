import 'dart:io';

import 'package:flutter/cupertino.dart';

class LanguageChangeProvider with ChangeNotifier{
  Locale _currentLocale = Locale(Platform.localeName.split('_')[0]);

  Locale get currentLocale => _currentLocale;

  void changeLocale(String _locale){
    _currentLocale = Locale(_locale);
    notifyListeners();
  }

}