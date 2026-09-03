import 'package:flutter/material.dart';

import 'package:fluttter_lab/days/day_07_screen/MusicPlayerScreen.dart';
import 'package:fluttter_lab/days/day_08_screen/SearchScreen.dart';
import 'package:fluttter_lab/days/day_09_screen/CounterScreen.dart';
import 'package:fluttter_lab/days/day_10_screen/GreetScreen.dart';
import 'package:fluttter_lab/days/day_10_screen/LoginScreen.dart';
import 'package:fluttter_lab/days/day_11-screen/DashboardScreen.dart';
import 'package:fluttter_lab/days/day_12-screen/BudgetPlannerScreen.dart';
import 'package:fluttter_lab/days/day_13-screen/ExpensesGrid.dart';
import 'package:fluttter_lab/days/day_13-screen/ExpensesList.dart';
import 'package:fluttter_lab/days/day_13-screen/GridViewBuilderScreen.dart';
import 'package:fluttter_lab/days/day_13-screen/ListViewBuilderScreen.dart';
import 'package:fluttter_lab/days/day_14_screen/ExpenseDashboard.dart';
import 'package:fluttter_lab/practice/Background.dart';
import 'package:fluttter_lab/practice/CyberDashboard.dart';
import 'package:fluttter_lab/practice/GlassLoginScreen.dart';
import 'package:fluttter_lab/practice/LoginScreenGit.dart';
import 'package:fluttter_lab/practice/ModernUICalculator.dart';
import 'package:fluttter_lab/practice/TestingScreen.dart';
import 'package:fluttter_lab/practice/bmi_calculator.dart';
import 'package:fluttter_lab/practice/calculator.dart';

class Apphome extends StatelessWidget {
  const Apphome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f6f8),

      body: SafeArea(
        child: Column(
          children: [

            // HEADER
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [

                  Text(
                    "Flutter Lab",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 6),

                  Text(
                    "My Flutter Learning Journey",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // DAY WISE SCREENS
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [

                  const Text(
                    "Day Wise Screens",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff17202a),
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Daily Learning screens, created during my Flutter journey",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // DAY 07
                  buildDayCard(
                    context,
                    "Day 07",
                    "Music Player Screen",
                    MusicPlayerScreen(),
                  ),

                  // DAY 08
                  buildDayCard(
                    context,
                    "Day 08",
                    "Search Screen",
                    SearchScreen(),
                  ),

                  // DAY 09
                  buildDayCard(
                    context,
                    "Day 09",
                    "Counter Screen",
                    Counterscreen(),
                  ),

                  // DAY 10 LOGIN
                  buildDayCard(
                    context,
                    "Day 10",
                    "Login Screen",
                    LoginScreen(),
                  ),

                  // DAY 10 GREET
                  buildDayCard(
                    context,
                    "Day 10",
                    "Greet Screen",
                    Greetscreen(),
                  ),

                  // DAY 11
                  buildDayCard(
                    context,
                    "Day 11",
                    "Income Dashboard",
                    Dashboardscreen(),
                  ),

                  // DAY 12
                  buildDayCard(
                    context,
                    "Day 12",
                    "Budget Planner",
                    Budgetplannerscreen(),
                  ),

                  // DAY 13 LIST
                  buildDayCard(
                    context,
                    "Day 13",
                    "ListView Practice",
                    Expenseslist(),
                  ),

                  // DAY 13 GRID
                  buildDayCard(
                    context,
                    "Day 13",
                    "GridView Practice",
                    ExpensesGrid(),
                  ),

                  // DAY 13 LIST BUILDER
                  buildDayCard(
                    context,
                    "Day 13",
                    "ListView.builder Practice",
                    ListViewBuilderScreen(),
                  ),

                  // DAY 13 GRID BUILDER
                  buildDayCard(
                    context,
                    "Day 13",
                    "GridView.builder Practice",
                    GridViewBuilderScreen(),
                  ),

                  // DAY 14 Combined Screen
                  buildDayCard(
                    context, 
                    "Day 14", 
                    "Modern Expense Dashboard", 
                    Expensedashboard()
                  ),

                  const SizedBox(height: 25),

               
                  // PRACTICE SCREENS
                  const Text(
                    "Practice Screens",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff17202a),
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Extra UI and application practice",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // PRACTICE 1
                  buildPracticeCard(
                    context,
                    "01",
                    "Scaffold Background",
                    Background(),
                  ),

                  // PRACTICE 2
                  buildPracticeCard(
                    context,
                    "02",
                    "Cyber Dashboard",
                    CyberDashboard(),
                  ),

                  // PRACTICE 3
                  buildPracticeCard(
                    context,
                    "03",
                    "Profile Testing Screen",
                    Profile(),
                  ),

                  // PRACTICE 4
                  buildPracticeCard(
                    context,
                    "04",
                    "BMI Calculator",
                    BMI(),
                  ),

                  // PRACTICE 5
                  buildPracticeCard(
                    context,
                    "05",
                    "Simple Calculator",
                    Calculator(),
                  ),

                  // PRACTICE 6
                  buildPracticeCard(
                    context,
                    "06",
                    "Simple Login Screen",
                    LoginScreen1(),
                  ),

                  // PRACTICE 7
                  buildPracticeCard(
                    context,
                    "07",
                    "Glassmorphism Login Screen",
                    GlassLoginScreen(),
                  ),

                  // PRACTICE 8
                   buildPracticeCard(
                    context,
                    "08",
                    "Modern UI Calculator",
                    Modernuicalculator()
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // DAY CARD
  Widget buildDayCard(
    BuildContext context,
    String day,
    String title,
    Widget screen,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Material(
        color: Colors.transparent,

        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => screen,
              ),
            );
          },

          child: Padding(
            padding: const EdgeInsets.all(16),

            child: Row(
              children: [

                // DAY BOX
                Container(
                  width: 65,
                  height: 55,

                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                    color:  Colors.blue,
                    borderRadius: BorderRadius.circular(14),
                  ),

                  child: Text(
                    day,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                // TITLE
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff17202a),
                    ),
                  ),
                ),

                // ARROW
                const Text(
                  ">",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // PRACTICE CARD
  Widget buildPracticeCard(
    BuildContext context,
    String number,
    String title,
    Widget screen,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),

        border: Border.all(
          color: Colors.grey.shade200,
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Material(
        color: Colors.transparent,

        child: InkWell(
          borderRadius: BorderRadius.circular(18),

          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => screen,
              ),
            );
          },

          child: Padding(
            padding: const EdgeInsets.all(16),

            child: Row(
              children: [

                // NUMBER
                Container(
                  width: 50,
                  height: 50,

                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(14),
                  ),

                  child: Text(
                    number,

                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                // TITLE
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const Text(
                  ">",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}