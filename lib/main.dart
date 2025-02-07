import 'package:flutter/material.dart';
import './login.dart';
import './signup.dart';
import './request.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      title: 'Blood Donating App',
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/request': (context) => RequestForBlood(),
      },
    );
  }
}
