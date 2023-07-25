import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_theme.g.dart';

@riverpod
class WeatherTheme extends _$WeatherTheme {
  @override
  ThemeData build() {
    return _lightTheme;
  }

  final _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.green,
  );
  final _lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.purple,
  );

  void setDarkTheme() {
    state = _darkTheme;
  }

  void setLightTheme() {
    state = _lightTheme;
  }

  ThemeData getLightTheme() {
    return _lightTheme;
  }

  ThemeData getDarkTheme() {
    return _darkTheme;
  }

  void setTheme({required bool toDark}) {
    if (toDark) {
      setDarkTheme();
    } else {
      setLightTheme();
    }
  }
}
