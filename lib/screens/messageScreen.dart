import 'package:flutter/material.dart';
import '../widget/messageItem.dart';
import '../widget/storyItem.dart';

class messageScreen extends StatelessWidget {
  static const routeName = '/messageScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text("i_m_s.i.n.c.h.a.n"),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.expand_more_outlined),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call_outlined,
              size: 38,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_comment_outlined,
              size: 32,
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          const SearchBar(
            leading: Icon(Icons.search),
            hintText: 'Search',
          ),
          const SizedBox(
            height: 20,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryItem("assets/images/aditya.jpg", 'Your note'),
                SizedBox(
                  height: 20,
                ),
                StoryItem("assets/images/penu.jpg", 'Priyanka.barik.3'),
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
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey.shade800,
          ),
          const SizedBox(
            height: 5,
          ),
          const MessageItem(
            2,
            "assets/images/penu.jpg",
            "Ohayoo chu",
            "Priyanka.barik.3",
          ),
          const MessageItem(
            10,
            "assets/images/jena.jpg",
            "hey boi",
            "rkaditya89",
          ),
          const MessageItem(
            25,
            "assets/images/abhi.jpg",
            "kire",
            "see_the_sahoo",
          ),
          const MessageItem(
            30,
            "assets/images/adisahoo.jpg",
            "mentioned you in their story",
            "i_m_aditya._",
          ),
          const MessageItem(
            38,
            "assets/images/satya.jpg",
            "harami",
            "satyaprakash",
          ),
          const MessageItem(
            50,
            "assets/images/yash.jpg",
            "you liked a message",
            "iyashrj",
          ),
        ],
      ),
    );
  }
}
