import 'package:flutter/material.dart';
import 'package:fluttter_lab/days/day_10_screen/LoginScreen.dart';

class Counterscreen extends StatefulWidget {
  const Counterscreen({super.key});

  @override
  State<Counterscreen> createState() => _CounterscreenState();
}

class _CounterscreenState extends State<Counterscreen> {
  int counter = 0;
  String status = "";

  @override
  Widget build(BuildContext context) {
    if (counter > 0) {
      status = "Positive";
    } else if (counter < 0) {
      status = "Negative";
    } else {
      status = "Zero";
    }

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Counter App"),
      ),

      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(15),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MY COUNTER",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 25),

              Text(
                "$counter",
                style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 5),

              Text(
                "$status",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),

              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      minimumSize: Size(60, 60),
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    icon: Icon(Icons.add),
                  ),

                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      minimumSize: Size(60, 60),
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                    icon: Icon(Icons.remove),
                  ),
                ],
              ),

              SizedBox(height: 25),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  minimumSize: Size(180, 50),
                  shape: ContinuousRectangleBorder(),
                ),
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
                child: Text("RESET COUNTER"),
              ),

              TextButton(
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => LoginScreen())
                  );
                },
                child: Text("View Day-09",
                  style: TextStyle(
                    color: Colors.blueAccent
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}