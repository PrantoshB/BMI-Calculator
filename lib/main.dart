import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          iconTheme: IconThemeData(
            color: Colors.white,
          )),
      initialRoute: '/',
      routes: {'/': (context) => Bmi(), '/result': (context) => ResultPage()},
    );
  }
}
