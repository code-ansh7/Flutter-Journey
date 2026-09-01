import 'package:flutter/material.dart';

class ExpensesGrid extends StatefulWidget {
  const ExpensesGrid({super.key});

  @override
  State<ExpensesGrid> createState() => _ExpensesGridState();
}

class _ExpensesGridState extends State<ExpensesGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView")),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            children: [
              GridTile(
                child: Container(
                  padding: EdgeInsets.all(16),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 8,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.all_inbox, size: 32, color: Colors.orange),

                      SizedBox(height: 10),

                      Text(
                        "All Expenses",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              gridContent("Food", Icons.restaurant),
              gridContent("Transport", Icons.directions_car),
              gridContent("Shopping", Icons.shopping_bag),
              gridContent("Bills", Icons.receipt_long),
              gridContent("Entertainment", Icons.movie),
              gridContent("Internet", Icons.wifi),
            ],
          ),
        ),
      ),
    );
  }

  Widget gridContent(String title, IconData icon) {
    return Container(
      padding: EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 32, color: Colors.orange),

          SizedBox(height: 10),

          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}