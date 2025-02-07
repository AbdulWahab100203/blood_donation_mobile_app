import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

DateTime _selectedDate = DateTime.now();

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up - LifeHero"),
        backgroundColor: Colors.red[800],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text("Create a New Account",
                    style: TextStyle(fontSize: 24)),
              ),
              SizedBox(height: 10),
              Text("Username"),
              TextField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your username",
                ),
              ),
              SizedBox(height: 10),
              Text("CNIC"),
              TextField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(13),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your CNIC",
                ),
              ),
              SizedBox(height: 10),
              Text("DOB"),
              DatePickerDialog(
                initialDate: _selectedDate,
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
              ),
              SizedBox(height: 10),
              Text("Gender"),
              DropdownButton<String>(
                hint: Text("Select Gender"),
                items: [
                  DropdownMenuItem(value: "Male", child: Text("Male")),
                  DropdownMenuItem(value: "Female", child: Text("Female")),
                  DropdownMenuItem(value: "Other", child: Text("Other")),
                ],
                onChanged: (value) {
                  print(value);
                },
              ),
              SizedBox(height: 10),
              Text("Province"),
              DropdownButton<String>(
                hint: Text("Select Province"),
                items: [
                  DropdownMenuItem(value: "Punjab", child: Text("Punjab")),
                  DropdownMenuItem(value: "Sindh", child: Text("Sindh")),
                  DropdownMenuItem(
                      value: "Balochistan", child: Text("Balochistan")),
                  DropdownMenuItem(value: "KPK", child: Text("KPK")),
                ],
                onChanged: (value) {
                  print(value);
                },
              ),
              SizedBox(height: 10),
              Text("Blood Group"),
              DropdownButton<String>(
                hint: Text("Select Blood Group"),
                items: [
                  DropdownMenuItem(value: "A+", child: Text("A+")),
                  DropdownMenuItem(value: "A-", child: Text("A-")),
                  DropdownMenuItem(value: "B+", child: Text("B+")),
                  DropdownMenuItem(value: "B-", child: Text("B-")),
                  DropdownMenuItem(value: "O+", child: Text("O+")),
                  DropdownMenuItem(value: "O-", child: Text("O-")),
                  DropdownMenuItem(value: "AB+", child: Text("AB+")),
                  DropdownMenuItem(value: "AB-", child: Text("AB-")),
                ],
                onChanged: (value) {
                  print(value);
                },
              ),
              SizedBox(height: 10),
              Text("City"),
              DropdownButton<String>(
                hint: Text("Select City"),
                items: [
                  DropdownMenuItem(
                      value: "Gujranwala", child: Text("Gujranwala")),
                  DropdownMenuItem(value: "Lahore", child: Text("Lahore")),
                  DropdownMenuItem(value: "Karachi", child: Text("Karachi")),
                  DropdownMenuItem(
                      value: "Islamabad", child: Text("Islamabad")),
                ],
                onChanged: (value) {
                  print(value);
                },
              ),
              SizedBox(height: 10),
              Text("Password"),
              TextField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(14),
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
                ],
                decoration: InputDecoration(border: OutlineInputBorder()),
                obscureText: true,
              ),
              SizedBox(height: 10),
              Text("Confirm Password"),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text("Sign Up"),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Already have an account? Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
