// import 'package:flutter/material.dart';
// import 'package:flutter_insta_clone/insta_home.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Instagram',
//       debugShowCheckedModeBanner: false,

//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         primaryColor: Colors.black,

//         primaryIconTheme: const IconThemeData(
//           color: Colors.black,
//         ),

//         textTheme: const TextTheme(
//           bodyMedium: TextStyle(
//             color: Colors.black,
//             fontFamily: 'Aveny',
//           ),
//         ),
//       ),

//       home: const InstaHome(),
//     );
//   }
// }
 



import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/calculatorApp/calculator.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      theme: new ThemeData(primarySwatch: Colors.cyan),
      home: new HomePage()
    );
  }
}
 


 