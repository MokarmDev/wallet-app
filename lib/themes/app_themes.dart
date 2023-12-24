import 'package:flutter/material.dart';

class AppThemes with ChangeNotifier {
  bool _darkTheme = true;
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    notifyListeners();
  }
}
