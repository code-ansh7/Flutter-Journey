import 'package:flutter/material.dart';
import 'package:hello_flutter_app/Screens/ModernScreen.dart';
import 'package:hello_flutter_app/Screens/MusicPlayerScreen.dart';
import 'package:hello_flutter_app/Screens/MyProfileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ModerScreen(),
      home: MusicplayerScreen(),
        //  home: Myprofilescreen(),
    );
  }
}