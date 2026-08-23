import 'package:flutter/material.dart';
import 'package:fluttter_lab/days/day_10_screen/GreetScreen.dart';
import 'package:fluttter_lab/days/day_10_screen/LoginScreen.dart';
import 'package:fluttter_lab/practice/TestingScreen.dart';
import 'package:fluttter_lab/appHome.dart';
import 'package:fluttter_lab/practice/YouTubeTutorial.dart';
import 'package:fluttter_lab/practice/bmi_calculator.dart';
import 'package:fluttter_lab/days/day_07_screen/MusicPlayerScreen.dart';
import 'package:fluttter_lab/days/day_08_screen/SearchScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MusicPlayerScreen(),
      // home: Greetscreen(),
      home: LoginScreen(),
    );
  }
}
