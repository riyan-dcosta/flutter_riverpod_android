import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod_android/features/home/presentation/pages/home_page.dart';
import 'package:flutter_riverpod_android/features/login/presentation/pages/login_page.dart';
import 'package:flutter_riverpod_android/features/settings/presentation/pages/settings_page.dart';
import 'package:flutter_riverpod_android/features/weather/presentation/pages/weather_page.dart';

part 'auto_router.gr.dart';

class AutoRouterSingleton{
  static final instance = AppRouter();
  AutoRouterSingleton._();
}

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true, path: "/login"),
        AutoRoute(page: HomeRoute.page, path: "/home"),
        AutoRoute(page: WeatherRoute.page, path: "/weather"),
        AutoRoute(page: SettingsRoute.page, path: "/settings"),
      ];
}
