import 'package:flutter/material.dart';

class Budgetplannerscreen extends StatefulWidget {
  const Budgetplannerscreen({super.key});

  @override
  State<Budgetplannerscreen> createState() => _BudgetplannerscreenState();
}

class _BudgetplannerscreenState extends State<Budgetplannerscreen> {
  
  double budget = 25000;
  String? budgetType = "Monthly";//Taki screen load hote hi ye selected rhe 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Budget Planner")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [

                // Budget Card Section
                Container(
                  height: 200,
                  color: Colors.white70,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text("Monthly Budget"),
                      SizedBox(height: 20),
                      Text("₹ ${budget.toInt()}"),
                      Slider(
                        min: 500,
                        max: 50000,
                        value: budget,
                        onChanged: (value) {
                          setState(() {
                            budget = value;
                            print(budget);
                          });
                        },
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Budget Type Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Budget Type",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Radio<String>(
                          value: "Monthly",
                          groupValue: budgetType,
                          onChanged: (value) {
                            setState(() {
                              budgetType = value;
                              print(budgetType);
                            });
                          },
                        ),

                        Text(
                          "Monthly",
                          style: TextStyle(fontSize: 15, color: Colors.black87),
                        ),

                        SizedBox(width: 15),

                        Radio<String>(
                          value: "Weekly",
                          groupValue: budgetType,
                          onChanged: (value) {
                            setState(() {
                              budgetType = value;
                              print(budgetType);
                            });
                          },
                        ),

                        Text(
                          "Weekly",
                          style: TextStyle(fontSize: 15, color: Colors.black87),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
