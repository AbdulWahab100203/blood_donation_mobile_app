import 'package:blooddonation/util/AppRoute.dart';
import 'package:flutter/material.dart';

class RequestForBlood extends StatelessWidget {
  const RequestForBlood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Request for blood - LifeHero"),
        backgroundColor: Colors.red[800],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child:
                    Text("Request For Blood", style: TextStyle(fontSize: 24)),
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
              Text("Cell No"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your Cell No",
                ),
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
              Text("Need For"),
              DropdownButton<String>(
                hint: Text("Select Need For"),
                items: [
                  DropdownMenuItem(value: "Accident", child: Text("Accident")),
                  DropdownMenuItem(
                      value: "Thelessimia", child: Text("Thelessimia")),
                  DropdownMenuItem(
                      value: "Operation", child: Text("Operation")),
                ],
                onChanged: (value) {
                  print(value);
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Approute.LOGIN_PAGE);
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
