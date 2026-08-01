import 'package:flutter/material.dart';

//Day - 01

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           body:Center(
//             child: Text("Flutter Day 1 Complete 🚀"),
//         ),
//       ),
//     ),
//   );
// }


// Day - 02 
// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});


//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         body: const Center(   
//           child: Text("Hello Ansh!\nFlutter Day 2 Complete 🚀"), // Yaha bhi const lga skte the!
//         ),
//       ),
//     );
//   }
// }

// Day - 03

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.deepOrangeAccent,
            alignment: Alignment.center,  // This Property is for Aligning.
            child: const Text("Hello Ansh PAPA"),
          ),
        ),
      ),
    );
  }
}