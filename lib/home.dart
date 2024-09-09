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
              "Master app development with interactive lessons and hands-on projects. "
                  "Transform your ideas into reality with expert guidance and real-world "
                  "practice.",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text("Continue", style: TextStyle(fontSize: 20))),
        ],
      ),
    );
  }
}