import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text("Spotify"),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              // "https://picsum.photos/250/180",
              "https://imgs.search.brave.com/3tcX7Bv5qOWz4bv_gyD2gUTiWJwhG3NLz0UDtgrqBFQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9saXZl/LW11c2ljLWNvbmNl/cnQtZ3VpdGFyaXN0/LWRydW1tZXItbmln/aHQtZW50ZXJ0YWlu/bWVudC1mZXN0aXZh/bC1ldmVudHMtbXVz/aWNhbC1wZXJmb3Jt/YW5jZS1zdGFnZS1y/ZWNyZWF0aW9uLXNo/b3ctMTE3Nzc5NjY2/LmpwZw",
              width: 250,
              height: 180,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 15,),

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
                print("View Details Pressed");
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
    );
  }
}
