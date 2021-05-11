import 'package:flutter/material.dart';
import 'package:login_screen/screens/pages/home_screen.dart';
import 'package:login_screen/screens/sign/login_screen.dart';
import 'package:login_screen/screens/sign/sign_screen.dart';
import 'package:login_screen/screens/sign/sign_up_screen.dart';
import 'package:login_screen/screens/wrapper.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Wrapper());
      case '/sign':
        return MaterialPageRoute(builder: (_) => SignScreen());
      case '/signup':
        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => SignUpScreen(
                    data: args,
                  ));
        }
        return _errorRoute();
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
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
