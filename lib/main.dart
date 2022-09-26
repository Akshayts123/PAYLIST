import 'package:flutter/material.dart';

import 'routes.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      title: 'Fine Qube App',
      onGenerateRoute: RouteGenerator.gernerateRoutes,
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'OpenSans',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
