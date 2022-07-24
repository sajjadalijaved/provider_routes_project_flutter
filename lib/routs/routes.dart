import 'package:flutter/material.dart';
import 'package:provider_routes_project/pages/login_page.dart';
import 'package:provider_routes_project/pages/main.dart';
import 'package:provider_routes_project/pages/setting.dart';

class RouteManger {
  static const String loginPage = '/';
  static const String mainPage = '/mainPage';
  static const String settingsPage = '/settingsPage';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case loginPage:
        return MaterialPageRoute(builder: ((context) => const Login()));

      case mainPage:
        return MaterialPageRoute(builder: ((context) => const MainPage()));

      case settingsPage:
        return MaterialPageRoute(builder: ((context) => const Settings()));

      default:
        throw const FormatException('Route not found! check the route');
    }
  }
}
