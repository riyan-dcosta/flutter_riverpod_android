import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod_android/presentation/pages/home_page.dart';
import 'package:flutter_riverpod_android/presentation/pages/weather_page.dart';

part 'auto_router.gr.dart';

class AutoRouterSingleton{
  static final instance = AppRouter();
  AutoRouterSingleton._();
}

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, path: "/home"),
        AutoRoute(page: WeatherRoute.page, path: "/weather"),
      ];
}
