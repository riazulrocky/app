import 'package:app/BMI%20Calculator/logic.dart';
import 'package:app/BMI%20Calculator/result.dart';
import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<home> {

  bool ismale = true;
  int weight = 60;
  int age = 25;
  double height = 175;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d1b20),
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
              color: Color(0xff8482ff),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){

                      setState(() {
                        ismale = true;
                      });

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: ismale == true? Color(0xff534672) : Color(0xff2e293d),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Color(0xff8482ff),
                            size: 50,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){

                      setState(() {
                        ismale = false;
                      });

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: ismale == false? Color(0xff534672) : Color(0xff2e293d),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Color(0xff8482ff),
                            size: 50,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff2e293d),
                borderRadius: BorderRadius.circular(25),
              ),
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height (cm)",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "${height.toInt()}",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  Slider(
                    min: 100,
                    max: 200,
                    activeColor: Color(0xff8482ff),
                    inactiveColor: Colors.black,
                    value: height,

                    onChanged: (double value){
                      setState(() {

                        height = value.roundToDouble();

                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff2e293d),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minWidth: 8,
                              height: 50,
                              color: Color(0xff8482ff),
                              onPressed: () {

                                setState(() {
                                  weight--;
                                });

                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            Text(
                              "$weight",
                              style: TextStyle(
                                  fontSize: 41,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              minWidth: 8,
                              height: 50,
                              color: Color(0xff8482ff),
                              onPressed: () {

                                setState(() {
                                  weight++;
                                });

                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Kg",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff2e293d),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minWidth: 8,
                              height: 50,
                              color: Color(0xff8482ff),
                              onPressed: () {

                                setState(() {
                                  age--;
                                });

                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            Text(
                              "$age",
                              style: TextStyle(
                                  fontSize: 41,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              minWidth: 8,
                              height: 50,
                              color: Color(0xff8482ff),
                              onPressed: () {

                                setState(() {
                                  age++;
                                });

                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Year",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Text(
                "Calculate",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),

              onPressed: (){

                Logic cal = Logic(
                  height: height.toInt(), weight: weight.toInt(),
                );

                Navigator.push(context, MaterialPageRoute(builder: (context)=> resultpage(
                  bmiResult: cal.calculateBMI(),
                  resultText: cal.getResult(),
                  info: cal.getInfo(),
                ))
                );

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