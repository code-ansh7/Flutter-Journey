import 'package:flutter/material.dart';
import 'package:fluttter_lab/AboutMe.dart';
 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) { 
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Lab",
      home: AboutMe()
    );
  }
}