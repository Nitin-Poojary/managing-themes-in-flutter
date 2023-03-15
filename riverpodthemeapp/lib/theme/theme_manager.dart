import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateNotifierProvider<ThemeManager, ThemeMode>((ref) {
  return ThemeManager(
    themeMode: ThemeMode.light,
  );
});

class ThemeManager extends StateNotifier<ThemeMode> {
  ThemeMode themeMode;

  ThemeManager({required this.themeMode}) : super(ThemeMode.light);

  get getThememode => themeMode;

  void toggleTheme(bool isDark) {
    themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    state = themeMode;
  }
}
