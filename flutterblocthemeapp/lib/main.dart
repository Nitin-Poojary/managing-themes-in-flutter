import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterblocthemeapp/home_screen.dart';
import 'package:flutterblocthemeapp/themes/theme_constants.dart';

import 'themes/bloc/theme_manager_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ThemeManagerBloc()..add(const ToggleTheme(isDark: false)),
      child: BlocBuilder<ThemeManagerBloc, ThemeManagerState>(
        builder: (context, state) {
          ThemeMode themeMode = ThemeMode.light;

          if (state is CurrentTheme) {
            themeMode = state.themeMode;
          }
          return MaterialApp(
            title: 'Material App',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: themeMode,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
