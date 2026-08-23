import 'package:flutter/material.dart';

class Greetscreen extends StatefulWidget {
  const Greetscreen({super.key});

  @override
  State<Greetscreen> createState() => _GreetscreenState();
}

class _GreetscreenState extends State<Greetscreen> {
  final TextEditingController nameController = TextEditingController();
  String greeting = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        title: Row(children: [Text("My Profile"), Spacer(), Text("Day-10")]),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 270,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.cyanAccent,
                blurRadius: 20,
                spreadRadius: 7,
                offset: Offset(0, 4),
              ),
            ],
            color: Colors.grey.shade600,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 10),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(

                    prefixIcon: IconButton(
                      onPressed: (){
                        greeting = nameController.text;
                        setState(() {
                          if (greeting.isEmpty) {
                            greeting = "Error";
                          } else {
                            greeting = nameController.text;
                          }
                        });
                      }, 
                      icon: Icon(Icons.search)
                    ),

                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          nameController.clear();
                          greeting = "";
                        });
                      }, 
                      icon: Icon(Icons.clear)
                    ),

                    hintText: "Enter Your Name...",
                    filled: true,
                    fillColor: Colors.white70,

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                        width: 2,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.cyanAccent,
                        width: 3,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Text("$greeting",
                  style: TextStyle(
                    fontSize: 30
                  ),
                ),

                SizedBox(height: 10),

                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyanAccent,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        greeting = nameController.text;
                        setState(() {
                          if (greeting.isEmpty) {
                            greeting = "Error";
                          } else {
                            greeting = nameController.text;
                          }
                        });
                      },
                      child: Text("Show Greeting",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 10,),

                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black,
                        side: BorderSide(color: Colors.cyanAccent, width: 2),
                      ),
                      onPressed: () {
                        setState(() {
                          nameController.clear();
                          greeting = "";
                        });
                      },
                      child: Text("Clear",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
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