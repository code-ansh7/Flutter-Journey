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
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: const Center(   
          child: Text("Hello Ansh!\nFlutter Day 1 Complete 🚀"), // Yaha bhi const lga skte the!
        ),
      ),
    );
  }
}