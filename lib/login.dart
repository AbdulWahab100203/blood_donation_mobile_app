import 'package:blooddonation/util/AppRoute.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login - LifeHero"),
        backgroundColor: Colors.red[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text("Welcome To the Blood Donation Organization!",
                    style: TextStyle(fontSize: 24))),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "you@gmail.com",
                  icon: Icon(Icons.contact_mail),
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter Password",
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Approute.REQUEST_PAGE);
              },
              child: Text("Login"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Approute.SIGNUP_PAGE);
              },
              child: Text("Don't have an account? Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
