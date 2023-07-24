import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_android/core/router/auto_router.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("loaded"),
      ),
      body: ElevatedButton(
        onPressed: () {
          context.router.navigate(WeatherRoute());
        },
        child: const Text("Go TO Weather Page"),
      ),
    );
  }
}
