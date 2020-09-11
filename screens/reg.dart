import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyReg extends StatefulWidget {
  // myget() {
  // var d = fsconnect.collection('students').get();
  //print(d);
  //}

  @override
  _MyRegState createState() => _MyRegState();
}

class _MyRegState extends State<MyReg> {
  var authc = FirebaseAuth.instance;
  String email;
  String password;
  String branch;
  String rollNo;
  String name;
  String regNo;

  @override
  Widget build(BuildContext context) {
    var fsconnect = FirebaseFirestore.instance;
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Student'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  name = value;
                },
                decoration: InputDecoration(
                    hintText: "Enter Name ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  regNo = value;
                },
                decoration: InputDecoration(
                    hintText: "Enter RegNo",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  branch = value;
                },
                decoration: InputDecoration(
                    hintText: "Enter Branch",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                    hintText: "Enter Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  rollNo = value;
                },
                decoration: InputDecoration(
                    hintText: "Enter Rollno",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
                elevation: 10,
                child: MaterialButton(
                  child: Text('Submit'),
                  onPressed: () {
                    fsconnect.collection("Student").add({
                      'name': name,
                      'Registration no': regNo,
                      'Branch': branch,
                      'email': email,
                      'password': password,
                      'Roll no': rollNo,
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
