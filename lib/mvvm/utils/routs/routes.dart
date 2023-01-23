

import 'package:flutter/material.dart';
import 'package:flutter_f/mvvm/utils/routs/routes_name.dart';
import 'package:flutter_f/mvvm/view/home_Screen.dart';

import '../../../chapter9/LoginPage.dart';
import '../../view/login_view.dart';

class Routes {

  static Route generateRoute(RouteSettings settings){
    final argume = settings.arguments;
    switch (settings.name){
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => HOmeScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(
              child: const Text("No Routes defined"),
            ),
          );
        }
        );
    }

  }

}