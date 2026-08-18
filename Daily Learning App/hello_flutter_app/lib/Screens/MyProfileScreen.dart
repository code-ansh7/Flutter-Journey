import 'package:flutter/material.dart';

class Myprofilescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            "My Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.cyanAccent,
            ),
          ),
        ),
      ),

      body: Center(
        child: Container(
          height: 320,
          width: 320,
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade800,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.cyanAccent, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.cyanAccent,
                blurRadius: 20,
                spreadRadius: 7,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("👨‍💻", style: TextStyle(fontSize: 65)),

              SizedBox(height: 15),

              Text(
                "Ansh Rastogi",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(color: Colors.white54, fontSize: 18),
              ),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyanAccent,
                      minimumSize: Size(80, 50),
                    ),
                    onPressed: () {
                      print("Follow Button Pressed!");
                    },
                    child: Text(
                      "FOLLOW",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyanAccent,
                      minimumSize: Size(80, 50),
                    ),
                    onPressed: () {
                      print("Message Button Pressed!");
                    },
                    child: Text(
                      "MESSAGE",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
