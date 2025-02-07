import 'package:blooddonation/util/AppRoute.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Approute.LOGIN_PAGE,
      title: 'Blood Donating App',
      onGenerateRoute: Approute.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
