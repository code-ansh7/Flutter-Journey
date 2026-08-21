import 'package:flutter/material.dart';
import 'package:fluttter_lab/practice/TestingScreen.dart';
import 'package:fluttter_lab/appHome.dart';
import 'package:fluttter_lab/practice/bmi_calculator.dart';
import 'package:fluttter_lab/days/day_07_screens/MusicPlayerScreen.dart';
import 'package:fluttter_lab/days/day_08_screens/SearchScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicPlayerScreen(),
    );
  }
}
