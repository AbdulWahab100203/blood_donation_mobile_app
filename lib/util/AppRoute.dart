import 'package:blooddonation/login.dart';
import 'package:blooddonation/request.dart';
import 'package:blooddonation/signup.dart';
import 'package:flutter/material.dart';

class Approute {
  static const String SIGNUP_PAGE = '/signup';
  static const String REQUEST_PAGE = '/request';
  static const String LOGIN_PAGE = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Approute.SIGNUP_PAGE:
        return MaterialPageRoute(builder: (c) => SignupScreen());
      case Approute.REQUEST_PAGE:
        return MaterialPageRoute(builder: (c) => RequestForBlood());
      case Approute.LOGIN_PAGE:
        return MaterialPageRoute(builder: (c) => LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (c) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
