import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_android/core/themes/weather_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_page_pod.g.dart';

@riverpod
bool isDarkThemeSet(IsDarkThemeSetRef ref) {
  final darkTheme = ref.read(weatherThemeProvider.notifier).getDarkTheme();
  return darkTheme == ref.watch(weatherThemeProvider);
}

@riverpod
class EditName extends _$EditName {
  @override
  bool build() => false;

  void toggleEditName() => state = !state;
}
