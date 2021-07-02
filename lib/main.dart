import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/router.dart';
import 'package:task_1/screens/main_screen.dart';

void main() {
  runApp(MyApp(
    router: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({Key? key, this.router}) : super(key: key);
  final AppRouter? router;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      onGenerateRoute: router!.generateRoute,
    );
  }
}
