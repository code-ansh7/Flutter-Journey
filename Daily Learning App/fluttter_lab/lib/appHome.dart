import 'package:flutter/material.dart';
import 'package:fluttter_lab/days/day_07_screen/MusicPlayerScreen.dart';
import 'package:fluttter_lab/days/day_08_screen/SearchScreen.dart';
import 'package:fluttter_lab/days/day_09_screen/CounterScreen.dart';
import 'package:fluttter_lab/days/day_10_screen/GreetScreen.dart';
import 'package:fluttter_lab/days/day_10_screen/LoginScreen.dart';
import 'package:fluttter_lab/days/day_11-screen/DashboardScreen.dart';
import 'package:fluttter_lab/practice/TestingScreen.dart';
import 'package:fluttter_lab/practice/bmi_calculator.dart';
import 'package:fluttter_lab/practice/calculator.dart';

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: Row(
          children: [Text("🧪 Flutter Lab"), Spacer(), Text("Day_07")],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 350,
                color: Colors.grey.shade800,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MusicPlayerScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Day-07(MusicScreeen)",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Day-08(SearchScreeen)",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Counterscreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Day-09(CounterScreeen)",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Greetscreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Day-10(GreetScreeen)",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 10),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Day-10(LoginScreeen)",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),

                     TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboardscreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Day-11(PaymentScreeen)",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                height: 200,
                width: 350,
                color: Colors.grey.shade800,
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BMI()),
                        );
                      },
                      child: Text(
                        "BMI Calculator",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      child: Text(
                        "Profile Screen",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                     TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Calculator()),
                        );
                      },
                      child: Text(
                        "Simple Calculator",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}