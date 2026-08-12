import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//MyApp Home Screen.
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     String name = "Ansh Rastogi";
//     String goal = "Flutter Developer";

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.blueGrey.shade900,
//         appBar: AppBar(
//           backgroundColor: Colors.black87,
//           title: Text(
//             "My Learning App",
//             style: TextStyle(color: Colors.cyanAccent),
//           ),
//         ),
//         body: Center(
//           child: Container(
//             height: 260,
//             width: 300,
//             color: Colors.blueGrey.shade800,
//             alignment: Alignment.center,
//             child: Column(
//               //For Vertical Aligning
//               mainAxisAlignment:
//                   MainAxisAlignment.center, //end, start, center, spaceArround
//               //For Horizontal Aligning
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text("🚀"),
//                 Text(name, style: TextStyle(color: Colors.white)),
//                 Text(goal, style: TextStyle(color: Colors.cyanAccent)),
//                 Text(
//                   "Building with Flutter",
//                   style: TextStyle(color: Colors.white70),
//                 ),
//                 Container(
//                   height: 100,
//                   width: 250,
//                   color: Colors.black54,
//                   child: Row(
//                     children: [
//                       const Text("🚀"),

//                       Column(
//                         children: [
//                           Text(name, style: TextStyle(color: Colors.white)),
//                           Text(
//                             goal,
//                             style: TextStyle(color: Colors.cyanAccent),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Ansh Rastogi";
    String goal = "Flutter Developer";

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,

        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            "Row & Column Practice",
            style: TextStyle(
              color: Colors.cyanAccent,
            ),
          ),
        ),

        body: Center(
          child: Container(
            width: 320,
            height: 180,
            color: Colors.blueGrey.shade800,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const Text(
                  "🚀",
                  style: TextStyle(
                     fontSize: 40,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),

                    Text(
                      goal,
                      style: const TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 16,
                      ),
                    ),

                    const Text(
                      "Building with Flutter",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                const Text("🚀",)
              ],
            ),
          ),
        ),
      ),
    );
  }
}