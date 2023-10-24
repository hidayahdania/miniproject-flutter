import 'package:flutter_miniproject/models/product.dart';
import 'package:flutter_miniproject/screens/home/main_home.dart';
import 'package:flutter_miniproject/screens/login.dart';
import 'package:flutter_miniproject/screens/product_page.dart';
import 'package:flutter_miniproject/screens/signup.dart';
import 'package:flutter_miniproject/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args;

    switch (settings.name) {
      case SplashScreen.id:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case LoginScreen.id:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case SignUpScreen.id:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case ProductPage.id:
        args = settings.arguments as Product;
        return MaterialPageRoute(
            builder: (context) => ProductPage(
                  product: args,
                ));

      case UserDashboard.id:
        return MaterialPageRoute(builder: (context) => UserDashboard());

      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
