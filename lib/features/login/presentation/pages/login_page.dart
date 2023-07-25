import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_android/core/weather_widgets/elevated_container.dart';
import 'package:flutter_riverpod_android/core/weather_widgets/weather_widgets.dart';
import 'package:flutter_riverpod_android/features/login/presentation/pod/login_page_pod.dart';

@RoutePage()
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameController =
        TextEditingController(text: ref.watch(usernameProvider));
    return Center(
      child: WeatherElevatedContainer(
          child: Column(
        children: [
          WeatherEditInputField(
            controller: usernameController,
            inputDecoration: InputDecoration(hintText: 'UserName'),
          ),
          const WeatherEditInputField(
            inputDecoration: InputDecoration(hintText: 'UserName'),
          ),
          ElevatedButton(
              onPressed: () {
                // ref.read(usernameProvider)= userNameController.value;;
              },
              child: const Text("submit"))
        ],
      )),
    );
  }
}
