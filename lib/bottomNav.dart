import 'package:app/BMI%20Calculator/bmi.dart';
import 'package:app/Profile/profile.dart';
import 'package:app/home.dart';
import 'package:flutter/material.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});



  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {

  List<Widget> pages = [front(), home(), homepage()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: "BMI Calculator",
            icon: Icon(Icons.calculate),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            label: "Profile",
            icon: Icon(Icons.person_off),
          ),
        ],
      ),
    );
  }
}
