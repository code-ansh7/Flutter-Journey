import 'package:flutter/material.dart';

class Expensedashboard extends StatelessWidget {
  const Expensedashboard({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> expense = [
      {
        "title": "Food",
        "amount": 250,
        "icon": Icons.restaurant,
        "iconColor": Colors.orange,
      },
      {
        "title": "Transport",
        "amount": 120,
        "icon": Icons.directions_car,
        "iconColor": Colors.blue,
      },
      {
        "title": "Shopping",
        "amount": 700,
        "icon": Icons.shopping_bag,
        "iconColor": Colors.purple,
      },
      {
        "title": "Movie",
        "amount": 6000,
        "icon": Icons.movie,
        "iconColor": Colors.red,
      },
      {
        "title": "Electricity",
        "amount": 1200,
        "icon": Icons.lightbulb,
        "iconColor": Colors.yellow,
      },
      {
        "title": "Internet",
        "amount": 800,
        "icon": Icons.wifi,
        "iconColor": Colors.green,
      },
    ];

    List<Map<String, dynamic>> activity = [
      {
        "title": "Food",
        "date": "Today, 2:30 PM",
        "amount": "-₹250",
        "type": "expense",
      },
      {
        "title": "Uber",
        "date": "Today, 11:20 AM",
        "amount": "-₹180",
        "type": "expense",
      },
      {
        "title": "Salary",
        "date": "Yesterday, 10:00 AM",
        "amount": "+₹25,000",
        "type": "income",
      },
    ];
    
    double totalExpense = 0;

    for(int i = 0; i < expense.length; i++){
      totalExpense += expense[i]["amount"];
    }

    return Scaffold(
      backgroundColor: Color(0xff0F172A),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Header
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning, Ansh 👋",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 7),

                    Text(
                      "Here's my financial overview",
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                //Balance Card
                Container(
                  width: double.infinity,
                  height: 180,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xff1E293B),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TOTAL BALANCE",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white60,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(height: 7),

                      Text(
                        "₹ ${totalExpense}",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 15),

                      Text(
                        "↑ 12.5% this month",
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 40, 162, 44),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                //Quick Action
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "QUICK ACTION",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70,
                      ),
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(16),
                            height: 110,
                            decoration: BoxDecoration(
                              color: Color(0xff1E293B),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Income",
                                  style: TextStyle(color: Colors.white60),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "₹ 28500",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "↑ This month",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      40,
                                      162,
                                      44,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(width: 15),

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(16),
                            height: 110,
                            decoration: BoxDecoration(
                              color: Color(0xff1E293B),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Expense",
                                  style: TextStyle(color: Colors.white60),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "₹ 18250",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "↓ This month",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20),

                //Spending Categories
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SPENDING CATEGORIES",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70,
                      ),
                    ),

                    GridView.builder(
                      shrinkWrap: true,
                      physics:
                          NeverScrollableScrollPhysics(), //Taki GridView Khud Scroll na Kre
                      itemCount: expense.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 180,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Color(0xff1E293B),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                expense[index]["icon"],
                                size: 40,
                                color: expense[index]["iconColor"],
                              ),
                              SizedBox(height: 7),
                              Text(
                                "${expense[index]["title"]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "${expense[index]["amount"]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),

                SizedBox(height: 20),

                //Recent Activity
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RECENT ACTIVITY",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70,
                      ),
                    ),

                    ListView.builder(
                      itemCount: activity.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Color(0xff1E293B),
                          ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${activity[index]["title"]}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                      ),
                                    ),
                                    Text("${activity[index]["date"]}",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),

                                Spacer(),

                                Text(
                                  "${activity[index]["amount"]}",
                                  style: TextStyle(
                                    color: activity[index]["type"] == "income"
                                        ? Colors.green
                                        : Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
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