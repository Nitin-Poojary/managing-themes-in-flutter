import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodthemesapp/home_screen.dart';
import 'package:riverpodthemesapp/theme/theme_contants.dart';
import 'package:riverpodthemesapp/theme/theme_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(
        builder: (context, ref, child) {
          return MaterialApp(
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ref.watch(themeProvider),
            title: 'Material App',
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
