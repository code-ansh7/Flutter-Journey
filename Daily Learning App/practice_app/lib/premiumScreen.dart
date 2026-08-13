import 'package:flutter/material.dart';

class PremiumFeatureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "AnshVerse Premium",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 25
              ),
            ),
          ],
        ),
      ),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,  // Agr expanded se wrap na krte tb ye lagate
        children: [
          Expanded(  // isne made by ansh ko to print kr diya fr baki ki space khud use mai le li fr center widget se card ko center mai le aaye bachi hui space mai hi 
            child: Center(
              child: Container(
                height: 550,
                width: 320,
                // margin: EdgeInsets.only(top: 80),   // Agr expanded se wrap na krte tb ye lagate
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade800,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.amberAccent, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amberAccent,
                      blurRadius: 20,
                      spreadRadius: 7,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text("👑", style: TextStyle(fontSize: 55)),
            
                    Text(
                      "Unlock Premium",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            
                    SizedBox(height: 8),
            
                    Text(
                      "Build better. Learn faster.",
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
            
                    SizedBox(height: 20),
            
                    Container(
                      height: 170,
                      width: 270,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "✓",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 18,
                                ),
                              ),
            
                              SizedBox(width: 12),
            
                              Text(
                                "Unlimited Learning",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
            
                          SizedBox(height: 8),
            
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "✓",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 18,
                                ),
                              ),
            
                              SizedBox(width: 12),
            
                              Text(
                                "Premium Projects",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
            
                          SizedBox(height: 8),
            
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "✓",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 18,
                                ),
                              ),
            
                              SizedBox(width: 12),
            
                              Text(
                                "No Ads",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
            
                          SizedBox(height: 8),
            
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "✓",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 18,
                                ),
                              ),
            
                              SizedBox(width: 12),
            
                              Text(
                                "Advanced Features",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
            
                    SizedBox(height: 20),
            
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "₹6000.00",
                          style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " /month",
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ],
                    ),
            
                    Container(
                      width: 220,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "GET PREMIUM",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
            
                    SizedBox(height: 10),
            
                    Text(
                      "* Cancel anytime *",
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // SizedBox(height: 70,),    // Agr expanded se wrap na krte tb ye lagate

          const Text(
            "Made With 💗 By Ansh",
            style: TextStyle(color: Colors.white54, fontSize: 15),
          ),

          SizedBox(height: 7,)
        ],
      ),
    );
  }
}