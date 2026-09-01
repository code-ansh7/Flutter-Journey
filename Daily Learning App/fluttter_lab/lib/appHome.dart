import 'package:flutter/material.dart';
import 'package:fluttter_lab/days/day_07_screen/MusicPlayerScreen.dart';
import 'package:fluttter_lab/days/day_08_screen/SearchScreen.dart';
import 'package:fluttter_lab/days/day_09_screen/CounterScreen.dart';
import 'package:fluttter_lab/days/day_10_screen/GreetScreen.dart';
import 'package:fluttter_lab/days/day_10_screen/LoginScreen.dart';
import 'package:fluttter_lab/days/day_11-screen/DashboardScreen.dart';
import 'package:fluttter_lab/days/day_12-screen/BudgetPlannerScreen.dart';
import 'package:fluttter_lab/practice/Background.dart';
import 'package:fluttter_lab/practice/CyberDashboard.dart';
import 'package:fluttter_lab/practice/GlassLoginScreen.dart';
import 'package:fluttter_lab/practice/LoginScreenGit.dart';
import 'package:fluttter_lab/practice/TestingScreen.dart';
import 'package:fluttter_lab/practice/bmi_calculator.dart';
import 'package:fluttter_lab/practice/calculator.dart';

class Apphome extends StatelessWidget {
  const Apphome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(
              "Day Wise Screens",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MusicPlayerScreen(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.white70,
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        child: Text("Day-07{MusicPlayerScreen}"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.white70,
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        child: Text("Day-08{SearchScreen}"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Counterscreen(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.white70,
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        child: Text("Day-09{CounterScreen}"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        margin: EdgeInsets.all(5),
                        color: Colors.white70,
                        child: Text("Day-10{LoginScreen}"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Greetscreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        margin: EdgeInsets.all(5),
                        color: Colors.white70,
                        child: Text("Day-10{GreetScreen}"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboardscreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        margin: EdgeInsets.all(5),
                        color: Colors.white70,
                        child: Text("Day-11{IncomeDashboardScreen}"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Budgetplannerscreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        margin: EdgeInsets.all(5),
                        color: Colors.white70,
                        child: Text("Day-12{BudgetPlannerScreen}"),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Practice Screens",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: [
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Background();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: Colors.white70,
                        child: Text("1. Scaffold Background"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CyberDashboard();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: Colors.white70,
                        child: Text("2. Cyber Dashboard"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Profile();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: Colors.white70,
                        child: Text("3. Profile Testing Screen"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return BMI();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: Colors.white70,
                        child: Text("4. BMI Calculator"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Calculator();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: Colors.white70,
                        child: Text("5. Simple Calculator"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen1();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: Colors.white70,
                        child: Text("6. Simple Login Screen"),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return GlassLoginScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: Colors.white70,
                        child: Text("7. Glassmorphism UI Login Screen"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}