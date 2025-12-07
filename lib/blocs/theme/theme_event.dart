import 'package:equatable/equatable.dart';

abstract class ThemeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ChangeThemeEvent extends ThemeEvent {
  ChangeThemeEvent({required this.randInt});

  final int randInt;

  @override
  List<Object> get props => [randInt];

  @override
  String toString() => 'ChangeThemeEvent(randInt: $randInt)';
}