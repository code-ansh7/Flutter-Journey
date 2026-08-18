import 'package:flutter/material.dart';

class AppHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: Row(
          children: [
            Text("🧪 Flutter Lab"),
            Spacer(),
            Text("Day_07"),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text("Daily Flutter Practice"),
      ),
    );
  }
}