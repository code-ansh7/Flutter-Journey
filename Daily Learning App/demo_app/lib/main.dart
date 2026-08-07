import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Daily Learning App"),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 1, 1),
        body: Container(
          margin: EdgeInsets.all(100),
          height: 200,
          width: 280,
          color: Colors.blueAccent,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("🚀"),
                Text("Demo App"),
                Text("Flutter Developer..."),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 80,
                    width: 120,
                    color: const Color.fromRGBO(28, 216, 141, 1),
                    alignment: Alignment.center,
                    padding:EdgeInsets.all(5),
                    child: Text("For learning flutter widgets."),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
