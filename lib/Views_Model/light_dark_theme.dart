import 'package:flutter/material.dart';
import 'package:get/get.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  // Define your light mode theme properties here
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  // Define your dark mode theme properties here
);

class ThemeController extends GetxController {
  var isDarkMode = false.obs;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
  }
}
