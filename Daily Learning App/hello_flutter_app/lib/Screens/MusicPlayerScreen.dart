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
          height: 430,
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

              Text("Building Lights",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: 5,),

              Text("The Weekend",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
