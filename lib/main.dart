import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_android/core/router/auto_router.dart';
import 'package:flutter_riverpod_android/core/themes/weather_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: MaterialApp.router(
        theme: ref.watch(weatherThemeProvider),
        routerConfig: AutoRouterSingleton.instance.config(),
        debugShowCheckedModeBanner: false,
        // routerConfig: AppRouter().config(),
      ),
    );
  }
}
