import 'package:flutter/material.dart';

class ui extends StatefulWidget {
  const ui({super.key});

  @override
  State<ui> createState() => _homeState();
}

class _homeState extends State<ui> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Text(
        "Welcome",
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}