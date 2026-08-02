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
// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             width: 200,
//             height: 100,
//             color: Colors.deepOrangeAccent,
//             alignment: Alignment.center,  // This Property is for Aligning.
//             child: const Text("Hello Ansh PAPA"),
//           ),
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,//For changing the Screen Background Color
        body: Container(
          height: 180,
          width: 300,
          color: Colors.pink,
          margin: const EdgeInsets.symmetric(
            vertical: 100,
            horizontal: 150,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30, //left: 20, right: 20, top: 0, bottom: 0
              vertical: 30, //left: 0, right: 0, top: 40, bottom: 40
            ), //EdgeInsets.only(
            //left: 30,
            //top: 20,
            //right: 40,
            //left: 50,
            //),// const EdgeInsets.all(20),// Add Spaces form Border
            child: const Text("Hello Ansh!"),
          ),
        ),
      ),
    );
  }
}
