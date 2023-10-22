import 'package:flutter/material.dart';
import 'package:instagram/screens/addpost.dart';
import 'package:instagram/screens/mainpage.dart';
import 'package:instagram/screens/profilescreen.dart';
import 'package:instagram/screens/reelsscreen.dart';
import 'package:instagram/screens/searchscreen.dart';
// import 'package:instagram/provider/post.dart';
// import 'package:instagram/screens/searchscreen.dart';
// import 'package:instagram/widget/postitem.dart';
// import 'package:instagram/widget/storywidget.dart';
// import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _onTapNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _buildbody = <Widget>[
    MainPage(),
    SearchScreen(),
    AddPostScreen(),
    ReelScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onTapNavigation,
        iconSize: 30,
        selectedIconTheme: const IconThemeData(size: 30),
        selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: 'Home',
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: 'Search',
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: 'Post',
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: 'Reels',
            icon: Icon(
              Icons.play_circle_fill_outlined,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: 'Profile',
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: _buildbody[_selectedIndex],
    );
  }
}
