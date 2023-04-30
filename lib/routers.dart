import 'package:amazon_clone/features/auth/screens/auth_screens.dart';
import 'package:flutter/material.dart';

Route<dynamic> generarRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreens.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreens(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Pagina no existe'),
          ),
        ),
      );
  }
}
