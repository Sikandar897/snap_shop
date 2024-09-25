import 'package:flutter/material.dart';
import 'package:snap_shop/routes/app_routes.dart';
import 'package:snap_shop/view/auth_view/signin_view.dart';
import 'package:snap_shop/view/auth_view/signup_view.dart';
import 'package:snap_shop/view/auth_view/welcome_view.dart';

import '../view/auth_view/rest_password.dart';
import '../view/auth_view/splash_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //splash view
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      //welcome view
      case AppRoutes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeView());
      //signin view
      case AppRoutes.signin:
        return MaterialPageRoute(builder: (_) => const SignInView());
      //signup view
      case AppRoutes.sigup:
        return MaterialPageRoute(builder: (_) => const SignUpView());

      //forgot password view
      case AppRoutes.restPassword:
        return MaterialPageRoute(builder: (_) => const RestPasswordView());

      // Add new routes here

      default:
        // If there is no such named route, throw an exception.
        throw Exception('Invalid route: ${settings.name}');
    }
  }
}
