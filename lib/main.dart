import 'package:flutter/material.dart';
import 'package:snap_shop/view/auth_view/signin_view.dart';
import 'routes/app_routes.dart';
import 'routes/routes_generator.dart';
import 'view/auth_view/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SnapShop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.splash, // Set your initial route
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
