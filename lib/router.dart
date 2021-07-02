import 'package:flutter/material.dart';
import 'package:task_1/constants.dart';
import 'package:task_1/screens/main_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => MainScreen());
      case MAIN_SCREEN:
        return MaterialPageRoute(builder: (_) => MainScreen());
      default:
        return null!;
    }
  }
}
