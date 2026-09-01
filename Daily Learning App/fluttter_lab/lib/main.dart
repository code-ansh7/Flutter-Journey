import 'package:flutter/material.dart';
import 'package:fluttter_lab/days/day_10_screen/GreetScreen.dart';
import 'package:fluttter_lab/days/day_10_screen/LoginScreen.dart';
import 'package:fluttter_lab/days/day_11-screen/DashboardScreen.dart';
import 'package:fluttter_lab/days/day_12-screen/BudgetPlannerScreen.dart';
import 'package:fluttter_lab/days/day_13-screen/ExpensesList.dart';
import 'package:fluttter_lab/days/day_13-screen/ListViewBuilderScreen.dart';
import 'package:fluttter_lab/practice/CyberDashboard.dart';
import 'package:fluttter_lab/practice/GlassLoginScreen.dart';
import 'package:fluttter_lab/practice/LoginScreenGit.dart';
import 'package:fluttter_lab/practice/TestingScreen.dart';
import 'package:fluttter_lab/appHome.dart';
import 'package:fluttter_lab/practice/Background.dart';
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
      title: "Flutter Lab",
      home: Apphome(),
    );
  }
}