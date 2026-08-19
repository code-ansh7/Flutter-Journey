import 'package:flutter/material.dart';
import 'package:fluttter_lab/days/day_08_screens/SearchScreen.dart';

class MusicPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: Row(
          children: [
            Text("Spotify",
              style: TextStyle(
                color: Colors.cyanAccent,
                fontWeight: FontWeight.bold
              ),
            ),

            Spacer(),

            Text("Day-07",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ],
        ),
      ),

      body: Center(
        child: Container(
          height: 450,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.cyanAccent,
              width: 2,
            ), 
            boxShadow: [
              BoxShadow(
                color: Colors.cyanAccent,
                blurRadius: 20,
                spreadRadius: 7,
                offset: Offset(0, 2),
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(10),
              //   child: Image.network(
              //     // "https://picsum.photos/250/180",
              //     "https://imgs.search.brave.com/3tcX7Bv5qOWz4bv_gyD2gUTiWJwhG3NLz0UDtgrqBFQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9saXZl/LW11c2ljLWNvbmNl/cnQtZ3VpdGFyaXN0/LWRydW1tZXItbmln/aHQtZW50ZXJ0YWlu/bWVudC1mZXN0aXZh/bC1ldmVudHMtbXVz/aWNhbC1wZXJmb3Jt/YW5jZS1zdGFnZS1y/ZWNyZWF0aW9uLXNo/b3ctMTE3Nzc5NjY2/LmpwZw",
              //     width: 250,
              //     height: 180,
              //     fit: BoxFit.cover,
              //   ),
              // ),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/ansh.jpeg",
                  height: 200,
                  width: 180,
                  fit: BoxFit.cover,
                  ),
              ),
          
              SizedBox(height: 15),

              Text("Blue Eyes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
              ),
              Text("Yo Yo Honey Singh",
                 style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15
                ),
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyanAccent,
                      foregroundColor: Colors.black, //For Text/Icon Color
                    ),
                    onPressed: () => print("Play button pressed"),
                    child: Text("PLAY"),
                  ),

                  SizedBox(width: 7,),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.cyanAccent,
                      side: BorderSide(color: Colors.cyanAccent, width: 2),
                    ),
                    onPressed: () {
                      print("Cancel Button Pressed");
                    },
                    child: Text("CANCEL"),
                  ),
                ],
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.cyanAccent),
                onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchScreen()
                  ),
                );
                },
                child: Text("View Details"),
              ),
          
              IconButton(
                onPressed: () {
                  print("Favorite pressed");
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.cyanAccent,
                  foregroundColor: Colors.black,
                  shape: LinearBorder(),
                ),
                icon: Icon(
                  Icons.favorite_border,
                  // color: Colors.black, foregroundColor de do ya yha pr color de do
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}