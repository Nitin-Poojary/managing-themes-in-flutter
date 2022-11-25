part of 'theme_manager_bloc.dart';

abstract class ThemeManagerState extends Equatable {
  const ThemeManagerState();

  @override
  List<Object> get props => [];
}

class ThemeManagerInitial extends ThemeManagerState {}

class CurrentTheme extends ThemeManagerState {
  final ThemeMode themeMode;

  const CurrentTheme({required this.themeMode});

  @override
  List<Object> get props => [themeMode];
}
