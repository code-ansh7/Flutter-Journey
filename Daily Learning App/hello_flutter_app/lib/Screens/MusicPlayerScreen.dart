import 'package:flutter/material.dart';

class Musicplayerscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 247, 250),

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Spotify", style: TextStyle(color: Colors.black87)),
      ),

      body: Center(
        child: Container(
          height: 450,
          width: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 20,
                spreadRadius: 2,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: 250,
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 232, 224, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("🎵", 
                  style: TextStyle(
                    fontSize: 65
                  )
                ),
              ),

              SizedBox(height: 18,),

              Text("Blue Eyes",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: 5,),

              Text("Yo Yo Honey Singh",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),

              SizedBox(height: 20,),

              Container(
                height: 5,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              SizedBox(height: 5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("0:42",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                  Text("3:45",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 7,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: (){}, 
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.deepPurple,
                        width: 2,
                      ),
                    ),
                    child: Text("⏮", 
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    )
                  ),

                  ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    child: Text("▶",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    )
                  ),

                  OutlinedButton(
                    onPressed: (){}, 
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.deepPurple,
                        width: 2,
                      )
                    ),
                    child: Text("⏭", 
                      style: TextStyle(
                        color: const Color.fromARGB(255, 120, 68, 211),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
