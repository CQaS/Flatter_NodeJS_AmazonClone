import 'package:amazon_clone/common/witgets/botton_bar.dart';
import 'package:amazon_clone/features/auth/screens/auth_screens.dart';
import 'package:amazon_clone/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generarRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreens.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreens(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BottonBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottonBar(),
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
