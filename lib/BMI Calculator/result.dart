import 'package:app/BMI%20Calculator/bmi.dart';
import 'package:app/bottomNav.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';

class resultpage extends StatelessWidget {
  resultpage({this.bmiResult, this.resultText, this.info});

  String? bmiResult;
  String? resultText;
  String? info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              color: Color(0xff8482ff),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Text("Result",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xff2e293d),
            ),
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Your BMI is",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "$resultText",
                      style: TextStyle(fontSize: 20, color: Color(0xff8482ff)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "$bmiResult",
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "$resultText",
              style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff8482ff),),
            ),
          ),
          SizedBox(height: 5),

          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "$info",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),
            ),
          ),
          Spacer(),

          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                "Re-Calculate",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),

              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=> bottomNav()));

              },


              color: Color(0xff8482ff),
              minWidth: 370,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }
}