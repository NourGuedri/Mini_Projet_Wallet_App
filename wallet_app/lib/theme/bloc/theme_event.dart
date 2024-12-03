part of 'theme_bloc.dart';

class ThemeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ThemeChangeEvent extends ThemeEvent {
  ThemeChangeEvent({required this.themeType}) : super() {
    PrefUtils().setThemeData(themeType);
  }

  final String themeType;

  @override
  List<Object?> get props => [themeType];
}
