import 'package:flutter/material.dart';

import './screens/messageScreen.dart';
import './screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        hintColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      home: MyHomePage(),
      routes: {
        messageScreen.routeName: (ctx) => messageScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Row(
          children: [
            const Text("Instagram"),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.expand_more_outlined),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(messageScreen.routeName);
            },
            icon: const Icon(Icons.messenger_outline_rounded),
          ),
          const SizedBox(
            width: 10,
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: homeScreen(),
    );
  }
}
