import 'package:bankapp/src/presentation/views/home_page.dart';
import 'package:bankapp/src/presentation/views/info_landing_page.dart';
import 'package:bankapp/src/presentation/views/spending_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => const InfoLandingPage(),
        );
      case HomePage.routeName:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case SpendingPage.routeName:
        return MaterialPageRoute(
          builder: (_) => const SpendingPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const InfoLandingPage(),
        );
    }
  }
}
