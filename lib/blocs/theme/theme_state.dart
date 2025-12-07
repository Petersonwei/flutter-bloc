import 'package:equatable/equatable.dart';

enum AppTheme { light, dark }

class ThemeState extends Equatable {
  const ThemeState({this.appTheme = AppTheme.light});

  final AppTheme appTheme;

  factory ThemeState.initial() {
    return const ThemeState(appTheme: AppTheme.light);
  }

  ThemeState copyWith({AppTheme? appTheme}) {
    return ThemeState(appTheme: appTheme ?? this.appTheme);
  }

  @override
  List<Object> get props => [appTheme];

  @override
  String toString() => 'ThemeState(appTheme: $appTheme)';
}