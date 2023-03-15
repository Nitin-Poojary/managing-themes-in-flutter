import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterblocthemeapp/themes/bloc/theme_manager_bloc.dart';

void main() {
  group(
    'Theme manager bloc -',
    () {
      blocTest<ThemeManagerBloc, ThemeManagerState>(
        'Given theme manager bloc when app is started then bloc should emit light theme',
        build: () => ThemeManagerBloc(),
        act: (bloc) => bloc.add(const ToggleTheme(isDark: false)),
        expect: () => const <ThemeManagerState>[
          CurrentTheme(themeMode: ThemeMode.light),
        ],
      );

      blocTest(
        'Given theme manager bloc when toggle event is added then toggle current theme and emit toggled state',
        build: () => ThemeManagerBloc(),
        act: (themeBloc) {
          themeBloc.add(const ToggleTheme(isDark: false));
          themeBloc.add(const ToggleTheme(isDark: true));
        },
        expect: () => [
          const CurrentTheme(themeMode: ThemeMode.light),
          const CurrentTheme(themeMode: ThemeMode.dark),
        ],
      );
    },
  );
}
