import 'package:ecommerce_design/home_screen/home_screen.dart';
import 'package:ecommerce_design/splash_screen/splash_screen.dart';
import 'package:ecommerce_design/utils/routes/route_name.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> routeSettings(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;
    switch (settings.name) {
      case RouteName.ssScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route found for: ${settings.name}"),
                  ),
                ));
    }
  }
}
