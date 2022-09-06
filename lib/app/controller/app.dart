import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = new AppController();

  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
    print("mudou o tema");
  }
}
