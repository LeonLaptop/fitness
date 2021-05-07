import 'package:flutter/material.dart';
import 'package:login_screen/screens/login_screen.dart';
import 'package:login_screen/screens/sign_screen.dart';
import 'package:login_screen/screens/sign_up_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SignScreen());

      case '/signup':
        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => SignUpScreen(
                    data: args,
                  ));
        }
        return _errorRoute();
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Center(
          child: Text("Error, check route_generator.dart"),
        ),
      );
    });
  }
}
