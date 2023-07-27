import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './storyItem.dart';
import '../provider/postModel.dart';

class story extends StatelessWidget {
  const story({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //final posts = Provider.of<postModel>(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.all(5),
        child: const Row(
          children: [
            StoryItem("assets/images/aditya.jpg", "Your story"),
            SizedBox(
              width: 10,
            ),
            StoryItem("assets/images/penu.jpg", "priyanka.barik.3"),
            SizedBox(
              width: 10,
            ),
            StoryItem("assets/images/jena.jpg", "rkaditya89"),
            SizedBox(
              width: 10,
            ),
            StoryItem("assets/images/abhi.jpg", "see_the_sahoo"),
            SizedBox(
              width: 10,
            ),
            StoryItem("assets/images/adisahoo.jpg", "i_m_aditya._"),
            SizedBox(
              width: 10,
            ),
            StoryItem("assets/images/satya.jpg", "satyaprakash"),
            SizedBox(
              width: 10,
            ),
            StoryItem("assets/images/yash.jpg", "iyashrj"),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
