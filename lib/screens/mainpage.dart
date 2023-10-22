import 'package:flutter/material.dart';
import 'package:instagram/provider/post.dart';
import 'package:instagram/provider/storydata.dart';
import 'package:instagram/screens/messagescreen.dart';
import 'package:instagram/widget/postitem.dart';
import 'package:instagram/widget/storyitem.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Post> loadedposts = Provider.of<Posts>(context).getpost;
    final List<Story> loadedstory = Provider.of<Stories>(context).getstories;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              "Instagram",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.expand_more_outlined,
                size: 28,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MessageScreen.routeName);
            },
            icon: const Icon(Icons.messenger_outline_rounded),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            // SingleChildScrollView(
            // child:
            Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: _buildStory(loadedstory: loadedstory),
            ),
            Divider(
              color: Colors.grey.shade800,
            ),
            Expanded(
              child: _buildpost(
                loadedposts: loadedposts,
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}

class _buildpost extends StatelessWidget {
  _buildpost({
    required this.loadedposts,
  });

  final List<Post> loadedposts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: loadedposts.length,
      itemBuilder: (BuildContext context, int index) {
        return PostItem(
          name: loadedposts[index].name,
          caption: loadedposts[index].description,
          likes: loadedposts[index].likes,
          location: loadedposts[index].location,
          url: loadedposts[index].url,
        );
      },
    );
  }
}

class _buildStory extends StatelessWidget {
  _buildStory({
    required this.loadedstory,
  });

  final List<Story> loadedstory;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: loadedstory.length,
      itemBuilder: (BuildContext context, int index) {
        return StoryItem(
          name: loadedstory[index].name,
          url: loadedstory[index].url,
        );
      },
      scrollDirection: Axis.horizontal,
    );
  }
}
