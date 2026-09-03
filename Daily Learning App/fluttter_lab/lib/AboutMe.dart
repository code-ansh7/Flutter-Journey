import 'package:flutter/material.dart';
import 'package:fluttter_lab/appHome.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "About Me",
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Apphome()),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20 ,left: 20, right: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/ansh.jpeg"),
                    ),
                
                    Spacer(),
                
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ansh Rastogi",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.amberAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Flutter App Developer",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              Container(
                padding: EdgeInsets.all(20),
                width: 305,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 20,
                      spreadRadius: 7,
                      offset: Offset(0, 4),
                    ),
                  ],
                  border: Border.all(color: Colors.amberAccent),
                ),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Icon(Icons.school, color: Colors.amberAccent, size: 40),
                        SizedBox(width: 25),
                        Text(
                          "B.Tech in CSE",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.computer_rounded,
                          color: Colors.amberAccent,
                          size: 40,
                        ),
                        SizedBox(width: 25),
                        Text(
                          "Java, Flutter, WebDev",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_pin,
                          color: Colors.amberAccent,
                          size: 40,
                        ),
                        SizedBox(width: 25),
                        Text(
                          "Tilhar, Shahjhanpur",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        Icon(Icons.phone, color: Colors.amberAccent, size: 40),
                        SizedBox(width: 25),
                        Text(
                          "9236920967",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        Icon(Icons.person, color: Colors.amberAccent, size: 40),
                        SizedBox(width: 25),
                        Text(
                          "code-ansh7",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  " My Name is Ansh Rastogi. Currently I am in 3rd Year in B.Tech(CSE). I have Good knowledge in Java, Flutter, Web Development.",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),

              Spacer(),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Apphome()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 10, 64, 90),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Text(
                    "Explore My Journey...",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}