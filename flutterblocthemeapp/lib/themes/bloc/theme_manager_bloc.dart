import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_manager_event.dart';
part 'theme_manager_state.dart';

class ThemeManagerBloc extends Bloc<ThemeManagerEvent, ThemeManagerState> {
  ThemeManagerBloc() : super(ThemeManagerInitial()) {
    on<ThemeManagerEvent>((event, emit) {});

    on<ToggleTheme>(
      ((event, emit) {
        ThemeMode themeMode = event.isDark ? ThemeMode.light : ThemeMode.dark;

        emit(CurrentTheme(themeMode: themeMode));
      }),
    );
  }
}
