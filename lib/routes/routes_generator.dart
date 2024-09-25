import 'package:flutter/material.dart';
import 'package:snap_shop/routes/app_routes.dart';
import 'package:snap_shop/view/auth_view/signin_view.dart';
import 'package:snap_shop/view/auth_view/welcome_view.dart';

import '../view/auth_view/splash_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());

      case AppRoutes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeView());

      case AppRoutes.signin:
        return MaterialPageRoute(builder: (_) => const SignInView());
      // Add new routes here

      default:
        // If there is no such named route, throw an exception.
        throw Exception('Invalid route: ${settings.name}');
    }
  }
}
