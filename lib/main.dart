import 'package:app/BMI%20Calculator/bmi.dart';
import 'package:app/Login/login.dart';
import 'package:app/Profile/profile.dart';
import 'package:app/bottomNav.dart';
import 'package:app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}