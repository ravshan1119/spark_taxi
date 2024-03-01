import 'package:flutter/material.dart';
import 'package:spark_taxi/src/presentation/views/auth/login/login_page.dart';
import 'package:spark_taxi/src/presentation/views/auth/register/register_page.dart';
import 'package:spark_taxi/src/presentation/views/home/home_page.dart';
import 'package:spark_taxi/src/presentation/views/routes/routes_page.dart';

import '../../presentation/views/home/widgets/hive_example.dart';
import '../../presentation/views/splash_screen.dart';

class RouteNames {
  static const String splashPage = "/";
  static const String loginPage = "/login_page";
  static const String registerPage = "/register_page";
  static const String routesPage = "/routes_page";
  static const String homePage = "/home_page";
  static const String hiveExamplePage = "/hive_example_page";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashPage:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RouteNames.loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case RouteNames.registerPage:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      case RouteNames.routesPage:
        return MaterialPageRoute(
          builder: (context) => const RoutesPage(),
        );
      case RouteNames.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case RouteNames.hiveExamplePage:
        return MaterialPageRoute(
          builder: (context) => const HiveExamplePage(),
        );
    }
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(child: Text("Route not found!")),
      ),
    );
  }
}
