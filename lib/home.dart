import 'package:app/BMI%20Calculator/bmi.dart';
import 'package:flutter/material.dart';
class front extends StatelessWidget {
  const front({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Hello, User", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Image.network("https://shorturl.at/ePgif"),
          const SizedBox(height: 20),
          const Text(
            "Welcome Back!",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const SizedBox(
            height: 150,
            width: 350,
            child: Text(
              "Quickly check your Body Mass Index by entering your "
                  "height and weight. Simple, fast, and easy-to-use!",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),

          ElevatedButton(
              onPressed: () {

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => home()));

              },
              child: const Text("Continue", style: TextStyle(fontSize: 20))),
        ],
      ),
    );
  }
}