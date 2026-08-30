import 'package:flutter/material.dart';

class Budgetplannerscreen extends StatefulWidget {
  const Budgetplannerscreen({super.key});

  @override
  State<Budgetplannerscreen> createState() => _BudgetplannerscreenState();
}

class _BudgetplannerscreenState extends State<Budgetplannerscreen> {
  double budget = 25000;
  String? budgetType = "Monthly"; //Taki screen load hote hi ye selected rhe
  bool food = false;
  bool transport = false;
  bool shopping = false;
  bool entertainment = false;
  bool autoSave = false;

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
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: Offset(0, 3),
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Monthly Budget",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "₹ ${budget.toInt()}",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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

                SizedBox(height: 20),

                // Spending Categories Section
                Column(
                  children: [
                    Text(
                      "Spending Categories",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Food
                    Row(
                      children: [
                        Checkbox(
                          value: food,
                          onChanged: (value) {
                            setState(() {
                              food = value!;
                              print("Food : $food");
                            });
                          },
                        ),
                        Text("Food"),
                      ],
                    ),
                    SizedBox(height: 5),
                    // Transport
                    Row(
                      children: [
                        Checkbox(
                          value: transport,
                          onChanged: (value) {
                            setState(() {
                              transport = value!;
                              print("Transport : $transport");
                            });
                          },
                        ),
                        Text("Transport"),
                      ],
                    ),
                    SizedBox(height: 5),
                    // Shopping
                    Row(
                      children: [
                        Checkbox(
                          value: shopping,
                          onChanged: (value) {
                            setState(() {
                              shopping = value!;
                              print("Shopping : $shopping");
                            });
                          },
                        ),
                        Text("Shopping"),
                      ],
                    ),
                    SizedBox(height: 5),
                    // Entertainment
                    Row(
                      children: [
                        Checkbox(
                          value: entertainment,
                          onChanged: (value) {
                            setState(() {
                              entertainment = value!;
                              print("Entertainment : $entertainment");
                            });
                          },
                        ),
                        Text("Entertainment"),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20),

                // Settings Section
                Column(
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: Offset(0, 3),
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Auto Save Budget",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Automatically save your budget changes",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Switch(
                            
                            value: autoSave,
                            onChanged: (value) {
                              setState(() {
                                autoSave = value;
                                if (autoSave) {
                                  print("ON");
                                } else {
                                  print("OFF");
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              
                SizedBox(height: 20,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
