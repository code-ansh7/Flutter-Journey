import 'package:flutter/material.dart';
import 'package:fluttter_lab/days/day_13-screen/ExpensesGrid.dart';

class Expenseslist extends StatefulWidget {
  const Expenseslist({super.key});

  @override
  State<Expenseslist> createState() => _ExpenseslistState();
}

class _ExpenseslistState extends State<Expenseslist> {

  
  // Category Chip Widget  {Custom Widget}
  Widget categoryChip(String title) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 12,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,

      appBar: AppBar(
        title: Text("My Expenses"),
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Expenses List",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),

              SizedBox(
                height: 50,

                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: [
                    categoryChip("Food"),
                    SizedBox(width: 10),

                    categoryChip("Transport"),
                    SizedBox(width: 10),

                    categoryChip("Shopping"),
                    SizedBox(width: 10),

                    categoryChip("Entertainment"),
                    SizedBox(width: 10),

                    categoryChip("Electricity"),
                    SizedBox(width: 10,),

                    categoryChip("Internet")
                  ],
                ),
              ),

              SizedBox(height: 20),

              //Vertical List

              Expanded(
                child: ListView(
                  children: [

                    // Food
                    ListTile(
                      onTap: (){
                        print("Food Tapped");
                      },
                      leading: Icon(
                        Icons.restaurant,
                        color: Colors.orange,
                      ),

                      tileColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                      title: Text(
                        "Food",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text("Today"),

                      trailing: Text(
                        "₹250",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    // Transport
                    ListTile(
                      onTap: (){
                        print("Transport Tapperd");
                      },
                      leading: Icon(
                        Icons.directions_car,
                        color: Colors.blue,
                      ),

                      tileColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                      title: Text(
                        "Transport",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text("Today"),

                      trailing: Text(
                        "₹120",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    // Shopping
                    ListTile(
                       onTap: (){
                        print("Shopping Tapperd");
                      },
                      leading: Icon(
                        Icons.shopping_bag,
                        color: Colors.purple,
                      ),

                      tileColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                      title: Text(
                        "Shopping",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text("Yesterday"),

                      trailing: Text(
                        "₹700",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    // Entertainment
                    ListTile(
                       onTap: (){
                        print("Entertainment Tapperd");
                      },
                      leading: Icon(
                        Icons.movie,
                        color: Colors.red,
                      ),

                      tileColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                      title: Text(
                        "Entertainment",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text("Yesterday"),

                      trailing: Text(
                        "₹6000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    // Electricity
                    ListTile(
                       onTap: (){
                        print("Electricity Tapperd");
                      },
                      leading: Icon(
                        Icons.lightbulb,
                        color: Colors.amber,
                      ),

                      tileColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                      title: Text(
                        "Electricity",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text("2 days ago"),

                      trailing: Text(
                        "₹1200",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    // Internet
                    ListTile(
                       onTap: (){
                        print("Internet Tapperd");
                      },
                      leading: Icon(
                        Icons.wifi,
                        color: Colors.green,
                      ),

                      tileColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                      title: Text(
                        "Internet",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      subtitle: Text("3 days ago"),

                      trailing: Text(
                        "₹799",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              TextButton(
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => ExpensesGrid()
                    ),
                  );
                }, 
                child: Text("GridView Pattern")
              )
            ],
          ),
        ),
      ),
    );
  }
}