import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_theme.g.dart';

final _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.green,
);
final _lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.purple,
);
ThemeData getDarkTheme(){
  return _darkTheme;
}
@riverpod
class WeatherTheme extends _$WeatherTheme {
  @override
  ThemeData build() {
    return _lightTheme;
  }

  void setDarkTheme() {
    state = _darkTheme;
  }

  void setLightTheme() {
    state = _lightTheme;
  }

  void setTheme({required bool toDark}) {
    if (toDark) {
      setDarkTheme();
    } else {
      setLightTheme();
    }
  }
}
