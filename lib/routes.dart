import 'package:finekube/screens/home.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> gernerateRoutes(
    RouteSettings settings,
  ) {
    final arguments = settings.arguments;
    final route = settings.name;

    return MaterialPageRoute(
      builder: (context) {
        return Stack(
          children: <Widget>[
            RouteWidget(route: route, arguments: arguments),
          ],
        );
      },
    );
  }
}

class RouteWidget extends StatelessWidget {
  final dynamic route;
  final dynamic arguments;

  RouteWidget({this.route, this.arguments});

  @override
  Widget build(BuildContext context) {
    switch (route) {
      case '/':
        return Homepage();
      case '/home':
        return Homepage();
      default:
        return Homepage();
    }
  }
}
