import 'package:flutter/material.dart';

class Story {
  late int id;
  late String name;
  late bool isOnline;
  late String url;
  Story(
      {required this.id,
      required this.isOnline,
      required this.name,
      required this.url});
}

class Stories with ChangeNotifier {
  final List<Story> _stories = [
    Story(
      id: 1,
      isOnline: true,
      name: 'i_m_sinchan',
      url: 'assets/images/aditya.jpg',
    ),
    Story(
      id: 2,
      isOnline: true,
      name: 'See_the_sahoo',
      url: 'assets/images/abhi.jpg',
    ),
    Story(
      id: 3,
      isOnline: true,
      name: 'clicked_by_adi',
      url: 'assets/images/adisahoo.jpg',
    ),
    Story(
      id: 4,
      isOnline: true,
      name: 'Rkaditya',
      url: 'assets/images/jena.jpg',
    ),
    Story(
      id: 5,
      isOnline: true,
      name: 'Priyanka',
      url: 'assets/images/penu.jpg',
    ),
    Story(
      id: 6,
      isOnline: true,
      name: 'Satyaprakashkhatoi',
      url: 'assets/images/satya.jpg',
    ),
    Story(
      id: 7,
      isOnline: true,
      name: 'i_m_yashraj',
      url: 'assets/images/yash.jpg',
    ),
  ];
  get getstories {
    return _stories;
  }
}
