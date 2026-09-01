import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatelessWidget {
  const GridViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> expenses = [
      {
        "title": "Food",
        "amount": 250,
        "date": "Today",
        "icon": Icons.restaurant,
        "iconColor": Colors.orange,
      },
      {
        "title": "Transport",
        "amount": 120,
        "date": "Today",
        "icon": Icons.directions_car,
        "iconColor": Colors.blue,
      },
      {
        "title": "Shopping",
        "amount": 700,
        "date": "Yesterday",
        "icon": Icons.shopping_bag,
        "iconColor": Colors.purple,
      },
      {
        "title": "Entertainment",
        "amount": 6000,
        "date": "Yesterday",
        "icon": Icons.movie,
        "iconColor": Colors.red,
      },
      {
        "title": "Electricity",
        "amount": 1200,
        "date": "2 days ago",
        "icon": Icons.lightbulb,
        "iconColor": Colors.yellow,
      },
      {
        "title": "Internet",
        "amount": 799,
        "date": "3 days ago",
        "icon": Icons.wifi,
        "iconColor": Colors.green,
      },
    ];
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(title: Text("Builder Practice")),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Dynamic List",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Expanded(
                child: GridView.builder(
                  itemCount: expenses.length,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),

                      child: InkWell(

                        onTap: (){
                          print("${expenses[index]["title"]} Tapped");
                        },

                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Icon(
                                expenses[index]["icon"],
                                size: 35,
                                color: expenses[index]["iconColor"],
                              ),

                              SizedBox(height: 12),

                              Text(
                                expenses[index]["title"],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                expenses[index]["date"],
                                style: TextStyle(color: Colors.grey),
                              ),

                              SizedBox(height: 8),

                              Text(
                                "₹${expenses[index]["amount"]}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}