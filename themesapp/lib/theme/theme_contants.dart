import 'package:flutter/material.dart';
import 'package:riverpodthemesapp/theme/colors.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: colorPrimary,
  brightness: Brightness.light,
  primaryColor: colorPrimary,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: accentColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  ),
  textTheme: const TextTheme(),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    ),
    filled: true,
    fillColor: greyColor.withOpacity(0.1),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.black),
      overlayColor: MaterialStateProperty.all<Color?>(
        greyColor.withOpacity(0.4),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    ),
    filled: true,
    fillColor: greyColor.withOpacity(0.1),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: whiteColor,
    splashColor: greyColor.withOpacity(0.3),
  ),
);
