import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_insta_clone/InstaClone/insta_stories.dart';

class InstaList extends StatefulWidget {
  const InstaList({super.key});

  @override
  State<InstaList> createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,

      itemBuilder: (context, index) {
        if (index == 0) {
          return const SizedBox(
            height: 120,
            child: InstaStories(),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // -----------------------------
            // USER HEADER
            // -----------------------------

            Padding(
              padding: const EdgeInsets.fromLTRB(
                16.0,
                16.0,
                8.0,
                16.0,
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,

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

                      const SizedBox(width: 10),

                      const Text(
                        'imthpk',

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // -----------------------------
            // POST IMAGE
            // -----------------------------

            AspectRatio(
              aspectRatio: 1,

              child: Image.network(
                'https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',

                fit: BoxFit.cover,

                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(
                      Icons.broken_image,
                      size: 50,
                    ),
                  );
                },
              ),
            ),

            // -----------------------------
            // ACTION BUTTONS
            // -----------------------------

            Padding(
              padding: const EdgeInsets.all(16.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: isPressed
                            ? const Icon(
                                Icons.favorite,
                              )
                            : const FaIcon(
                                FontAwesomeIcons.heart,
                              ),

                        color: isPressed
                            ? Colors.red
                            : Colors.black,

                        onPressed: () {
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                      ),

                      const SizedBox(width: 16),

                      const FaIcon(
                        FontAwesomeIcons.comment,
                      ),

                      const SizedBox(width: 16),

                      const FaIcon(
                        FontAwesomeIcons.paperPlane,
                      ),
                    ],
                  ),

                  const FaIcon(
                    FontAwesomeIcons.bookmark,
                  ),
                ],
              ),
            ),

            // -----------------------------
            // LIKES
            // -----------------------------

            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
              ),

              child: Text(
                'Liked by anshrastogi_07, ar and 528,331 others',

                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // -----------------------------
            // COMMENT
            // -----------------------------

            Padding(
              padding: const EdgeInsets.fromLTRB(
                16.0,
                16.0,
                0.0,
                8.0,
              ),

              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,

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

                  const SizedBox(width: 10),

                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add a comment...',
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // -----------------------------
            // TIME
            // -----------------------------

            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
              ),

              child: Text(
                '1 Day Ago',

                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}