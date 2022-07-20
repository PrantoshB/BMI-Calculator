import 'package:bmi_calculator/calc.dart';
import 'package:bmi_calculator/icondata.dart';
import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'reusable.dart';

const activeColor = Color(0xFF1D1E33);
const inActiveColor = Color(0xFF111328);
const ReuseColor = Color(0xFF1D1E33);
int finalheight = 180;
int finalage = 10;
int finalweight = 30;

enum gender {
  male,
  female,
  none,
}

class Bmi extends StatefulWidget {
  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  gender SelectedGender = gender.none;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF0A0E21),
        title: Text("BMI Calculator"),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    SelectedGender = gender.male;
                  });
                },
                child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconBMI(Icons.male),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "MALE",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF8D8E98)),
                      )
                    ],
                  ),
                  colour: SelectedGender == gender.male
                      ? activeColor
                      : inActiveColor,
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    SelectedGender = gender.female;
                  });
                },
                child: ReusableCard(
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconBMI(Icons.female),
                        SizedBox(
                          height: 15,
                        ),
                        Text("FEMALE",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF8D8E98),
                            )),
                      ]),
                  colour: SelectedGender == gender.female
                      ? activeColor
                      : inActiveColor,
                ),
              ))
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            colour: ReuseColor,
            cardChild: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  "HEIGHT",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF8D8E98),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      finalheight.toString(),
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -4),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "cm",
                      style: TextStyle(fontSize: 20, color: Color(0xFF8D8E98)),
                    )
                  ],
                ),
                Slider(
                  value: finalheight.toDouble(),
                  onChanged: (double newValue) {
                    setState(() {
                      finalheight = newValue.round();
                    });
                  },
                  activeColor: Color(0xFFEB1555),
                  min: 100,
                  max: 250,
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "WEIGHT",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          finalweight.toString(),
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -4),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "kg",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF8D8E98)),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RawMaterialButton(
                          constraints: BoxConstraints.tightFor(
                            width: 30,
                            height: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              finalweight--;
                            });
                          },
                          child: Icon(Icons.remove),
                          fillColor: Color(0xFF4C4F5E),
                          shape: CircleBorder(),
                        ),
                        RawMaterialButton(
                          constraints: BoxConstraints.tightFor(
                            width: 30,
                            height: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              finalweight++;
                            });
                          },
                          child: Icon(Icons.add),
                          fillColor: Color(0xFF4C4F5E),
                          shape: CircleBorder(),
                        )
                      ],
                    )
                  ],
                ),
                colour: ReuseColor,
              )),
              Expanded(
                child: ReusableCard(
                  colour: ReuseColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            finalage.toString(),
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w800,
                                letterSpacing: -4),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            constraints: BoxConstraints.tightFor(
                              width: 30,
                              height: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                finalage--;
                              });
                            },
                            child: Icon(Icons.remove),
                            fillColor: Color(0xFF4C4F5E),
                            shape: CircleBorder(),
                          ),
                          RawMaterialButton(
                            constraints: BoxConstraints.tightFor(
                              width: 30,
                              height: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                finalage++;
                              });
                            },
                            child: Icon(Icons.add),
                            fillColor: Color(0xFF4C4F5E),
                            shape: CircleBorder(),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              height: 80,
              color: Color.fromARGB(255, 249, 41, 86),
              child: Expanded(
                  child: TextButton(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                onPressed: () {
                  CalculateBMI calc =
                      CalculateBMI(height: finalheight, weight: finalweight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmiResult: calc.Calculate(),
                        resultText: calc.getResult(),
                      ),
                    ),
                  );
                },
              )),
            ))
          ],
        )
      ]),
    );
  }
}
