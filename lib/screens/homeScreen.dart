import 'package:flutter/material.dart';

import '../widget/story.dart';
import '../widget/postItem.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        story(),
        Divider(
          color: Colors.grey.shade900,
        ),
        const SizedBox(
          height: 10,
        ),
        postItem(
          text: "i_m_s.i.n.c.h.a.n",
          likes: 123,
          image: "assets/images/aditya.jpg",
        ),
        Divider(color: Colors.grey.shade900),
        postItem(
          text: "priyanka.barik.3",
          likes: 432,
          image: "assets/images/penu.jpg",
        ),
        Divider(color: Colors.grey.shade900),
        postItem(
          text: "rkaditya89",
          likes: 700,
          image: "assets/images/jena.jpg",
        ),
        Divider(color: Colors.grey.shade900),
        postItem(
          text: "see_the_sahoo",
          likes: 654,
          image: "assets/images/abhi.jpg",
        ),
        Divider(color: Colors.grey.shade900),
        postItem(
          text: "i_m_aditya._",
          likes: 1004,
          image: "assets/images/adisahoo.jpg",
        ),
        Divider(color: Colors.grey.shade900),
        postItem(
          text: "satyaprakash",
          likes: 102,
          image: "assets/images/satya.jpg",
        ),
        Divider(color: Colors.grey.shade900),
        postItem(
          text: "iyashrj",
          likes: 999,
          image: "assets/images/yash.jpg",
        ),
        Divider(color: Colors.grey.shade900),
      ],
    );
  }
}
