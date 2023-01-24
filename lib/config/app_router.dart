import 'package:datemate/models/models.dart';
import 'package:datemate/screens/home/homeScreen.dart';
import 'package:datemate/users/users_screen.dart';
import 'package:flutter/material.dart';

class MyAppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case '/users':
        return UserScreen.route(user: settings.arguments as User);
      // case UserScreen.routeName:
      //   return UserScreen.route(user:settings.arguments as User) ;
      // case '/settings':
      //   return MaterialPageRoute(builder: (_) => SettingsPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
