part of 'theme_manager_bloc.dart';

abstract class ThemeManagerEvent extends Equatable {
  const ThemeManagerEvent();

  @override
  List<Object> get props => [];
}

class ToggleTheme extends ThemeManagerEvent {
  final bool isDark;

  const ToggleTheme({required this.isDark});

  @override
  List<Object> get props => [isDark];
}
