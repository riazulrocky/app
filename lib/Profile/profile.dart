import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/rocky.jpg"),
              radius: 100,
            ),
            const SizedBox(height: 10),
            Text(
              "RIAZUL HASAN ROCKY",
              style: GoogleFonts.roboto(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            Text(
              "SOFTWARE ENGINEER",
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 80,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(0),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        "+88 01726 438566",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        "riazulrocky@gmail.com",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 205,
              width: 340,
              child: const Text(
                "I am a student of Computer Science and Engineering, "
                    "passionate about technology and innovation. I love "
                    "learning and am eager to continually expand my knowledge "
                    "and apply it to solve real-world problems through software "
                    "and hardware solutions.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}