import 'package:flutter/material.dart';
import 'package:instagram/provider/message.dart';
import 'package:instagram/provider/post.dart';
import 'package:instagram/provider/storydata.dart';
import 'package:instagram/screens/addpost.dart';
import 'package:instagram/screens/messagescreen.dart';
import 'package:instagram/screens/myhomepage.dart';
import 'package:instagram/screens/profilescreen.dart';
import 'package:instagram/screens/reelsscreen.dart';
import 'package:instagram/screens/searchscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Posts(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Stories(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Messages(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
          hintColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Instagram',
        home: MyHomePage(),
        routes: {
          SearchScreen.routeName: (ctx) => SearchScreen(),
          AddPostScreen.routeName: (ctx) => AddPostScreen(),
          ProfileScreen.routeName: (ctx) => ProfileScreen(),
          ReelScreen.routeName: (ctx) => ReelScreen(),
          MessageScreen.routeName: (ctx) => MessageScreen(),
        },
      ),
    );
  }
}
