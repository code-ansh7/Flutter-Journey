import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  const InstaStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          // -----------------------------
          // STORIES HEADER
          // -----------------------------

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              const Text(
                'Stories',

                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                children: const [
                  Icon(
                    Icons.play_arrow,
                    size: 20,
                  ),

                  SizedBox(width: 4),

                  Text(
                    'Watch All',

                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // -----------------------------
          // STORIES LIST
          // -----------------------------

          const SizedBox(height: 8),

          SizedBox(
            height: 60,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,

              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.bottomRight,

                  children: [
                    Container(
                      width: 60,
                      height: 60,

                      margin: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),

                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,

                        image: DecorationImage(
                          fit: BoxFit.cover,

                          image: NetworkImage(
                            'https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg',
                          ),
                        ),
                      ),
                    ),

                    if (index == 0)
                      Positioned(
                        right: 10,

                        child: CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          radius: 10,

                          child: const Icon(
                            Icons.add,
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}