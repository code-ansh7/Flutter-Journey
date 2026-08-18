import 'package:flutter/material.dart';
import 'package:hello_flutter_app/Screens/MyProfileScreen.dart';

import 'package:hello_flutter_app/Screens/PremiumScreen.dart';

class ModernScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = "Ansh Rastogi";
    String goal = "Flutter Developer";

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 46, 57),

      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: const IconThemeData(color: Colors.cyanAccent),
        backgroundColor: const Color.fromARGB(255, 15, 30, 38),
        title: Center(
          child: Row(
            children: [
              Text(
                "AnshVerse",
                style: TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(), //Used in Appbars, header because it creates spaces b/w the widgets feel like Expanded
              Text("🎭", style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ),

      body: Center(
        child: Container(
          width: 350,
          height: 330,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: const Color.fromARGB(255, 30, 60, 74),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.cyanAccent, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.cyanAccent,
                blurRadius: 15, //Shadow kitni blurred hogi
                spreadRadius: 5, //Shadow kitni spread hogi
                offset: Offset(0, 4), //Shadow lis direction mai jayegi(x, y)
              ),
            ],
          ),
          // padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              const Text("🚀", style: TextStyle(fontSize: 40)), //child 1

              SizedBox(width: 20), //for horizontal spacing
              
              Column(
                //child 2
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(
                    //child 1.a
                    name,
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),

                  const SizedBox(height: 8), //for vertical spacing

                  Text(
                    //child 1.b
                    goal,
                    style: const TextStyle(
                      color: Colors.cyanAccent,
                      fontSize: 25,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    //child 1.c
                    "Building with Flutter",
                    style: TextStyle(color: Colors.white70),
                  ),

                  SizedBox(height: 5),

                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PremiumScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyanAccent,
                          maximumSize: Size(170, 45),
                          shape: StadiumBorder(),
                        ),
                        child: Text(
                          "👑  GO PREMIUM",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),

                      SizedBox(height: 10),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Myprofilescreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyanAccent,
                          maximumSize: Size(170, 45),
                          shape: StadiumBorder(),
                        ),
                        child: Text(
                          "👨‍💻 My Profile",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(width: 20),

              const Text("🎯", style: TextStyle(fontSize: 40)), //child 3
            ],
          ),
        ),
      ),
    );
  }
}
