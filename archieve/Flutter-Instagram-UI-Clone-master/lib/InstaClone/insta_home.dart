 import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/InstaClone/insta_body.dart';

class InstaHome extends StatelessWidget {
  const InstaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,

        leading: const Icon(
          Icons.camera_alt,
          color: Colors.black,
        ),

        title: SizedBox(
          height: 35.0,
          child: Image.asset(
            'assets/images/insta_logo.png',
          ),
        ),

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.send,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: const InstaBody(),

      bottomNavigationBar: SizedBox(
        height: 50.0,
        child: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {},
              ),

              IconButton(
                icon: const Icon(Icons.search),
                onPressed: null,
              ),

              IconButton(
                icon: const Icon(Icons.add_box),
                onPressed: null,
              ),

              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: null,
              ),

              IconButton(
                icon: const Icon(Icons.account_box),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}