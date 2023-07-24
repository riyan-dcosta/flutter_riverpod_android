import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_android/core/router/auto_router.dart';

@RoutePage()
class WeatherPage extends ConsumerWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("weather"),
      ),
      body: ElevatedButton(
        onPressed: () {
          context.router.navigate(HomeRoute());
        },
        child: Text("GO back Home"),
      ),
    );
  }
}
