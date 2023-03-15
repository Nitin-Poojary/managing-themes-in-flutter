import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpodthemesapp/theme/theme_manager.dart';

ThemeManager themeManager = ThemeManager(themeMode: ThemeMode.light);
StateNotifierProvider<ThemeManager, ThemeMode> themeProvider =
    StateNotifierProvider<ThemeManager, ThemeMode>((ref) {
  return themeManager;
});

class Listener extends Mock {
  void call(ThemeMode? previous, ThemeMode value);
}

void main() {
  late ProviderContainer container;
  setUp(
    () {
      container = ProviderContainer();
    },
  );

  tearDownAll(
    () {
      container.dispose();
    },
  );

  group('Theme Manger -', () {
    test(
      'Given Theme manager class when app starts then it should return light theme',
      () {
        final listener = Listener();

        // Observe a provider and spy the changes.
        container.listen<ThemeMode>(
          themeProvider,
          listener,
          fireImmediately: true,
        );

        verify(() => listener(null, ThemeMode.light)).called(1);
        verifyNoMoreInteractions(listener);

        ThemeMode themeMode =
            container.read(themeProvider.notifier).getThememode;

        expect(themeMode, ThemeMode.light);
      },
    );

    test(
      'Given Theme manager class when toggleTheme function is called then toggle theme',
      () {
        ThemeMode themeMode =
            container.read(themeProvider.notifier).getThememode;
        expect(themeMode, ThemeMode.light);

        container.read(themeProvider.notifier).toggleTheme(true);

        themeMode = container.read(themeProvider.notifier).getThememode;
        expect(themeMode, ThemeMode.dark);
      },
    );
  });
}
