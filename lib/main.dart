import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_android/core/router/auto_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: MaterialApp.router(
        routerConfig: AutoRouterSingleton.instance.config(),
        // routerConfig: AppRouter().config(),
      ),
    ),
  );
}
