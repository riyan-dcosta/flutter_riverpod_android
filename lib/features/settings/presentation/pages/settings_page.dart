import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_android/core/themes/weather_theme.dart';
import 'package:flutter_riverpod_android/core/weather_widgets/weather_widgets.dart';
import 'package:flutter_riverpod_android/features/settings/presentation/pod/settings_page_pod.dart';

@RoutePage()
class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("settings page");
    final themeProviderObj = ref.read(weatherThemeProvider.notifier);
    final isDarkTheme = ref.watch(isDarkThemeSetProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings Page"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          List<Widget> childrenButtons = [
            Consumer(
              builder: (context, ref, child) {
                final userNameActive = ref.watch(editNameProvider);
                print("username");
                return Row(
                  children: [
                    Expanded(
                      child: WeatherEditInputField(
                        inputDecoration: const InputDecoration(
                          icon: CircleAvatar(),
                          hintText: 'User Name',
                        ),
                        readOnly: userNameActive,
                      ),
                    ),
                    IconButton(
                      color: userNameActive
                          ? Colors.grey
                          : Colors.green,
                      icon: Icon(userNameActive ? Icons.edit : Icons.save),
                      onPressed: () {
                        ref.read(editNameProvider.notifier).toggleEditName();
                      },
                    )
                  ],
                );
              },
            ),
            SwitchListTile(
                title: Text("${isDarkTheme ? 'Disable' : 'Enable'} Dark Theme"),
                value: isDarkTheme,
                onChanged: (bool value) {
                  themeProviderObj.setTheme(toDark: value);
                }),
          ];
          if (constraints.maxWidth > 500) {
            return Center(
              child: Container(
                width: constraints.biggest.width / 2,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 4),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Column(
                  children: childrenButtons,
                ),
              ),
            );
          } else {
            return Column(
              children: childrenButtons,
            );
          }
        },
      ),
    );
  }
}
