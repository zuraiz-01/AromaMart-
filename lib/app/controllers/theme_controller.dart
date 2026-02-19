import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final Rx<ThemeMode> themeMode = ThemeMode.light.obs;

  void toggleTheme() {
    themeMode.value = isDark ? ThemeMode.light : ThemeMode.dark;
  }

  bool get isDark => themeMode.value == ThemeMode.dark;
}
