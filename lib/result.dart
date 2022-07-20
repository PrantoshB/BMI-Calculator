import 'package:bmi_calculator/bmi.dart';
import 'package:bmi_calculator/reusable.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.resultText});

  final bmiResult;
  final resultText;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFF0A0E21),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xFF0A0E21),
            title: Text("BMI Calculator"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                '  Your Result',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 80,
              ),
              ReusableCard(
                colour: ReuseColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      resultText,
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      bmiResult.toString(),
                      style: TextStyle(
                          fontSize: 90,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Normal BMI Range:",
                      style: TextStyle(
                          color: Color.fromARGB(255, 129, 129, 129),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "18.5 - 24.9 kg/m²",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 80,
                    color: Color.fromARGB(255, 249, 41, 86),
                    child: Expanded(
                        child: TextButton(
                      child: Text(
                        "RE-CALCULATE",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )),
                  ))
                ],
              ),
            ],
          ),
        ));
  }
}
