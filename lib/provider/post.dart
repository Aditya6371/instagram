import 'package:flutter/material.dart';

class Post {
  late int id;
  late String name;
  late String url;
  String description = "";
  String location;
  int likes = 0;
  Post({
    required this.id,
    required this.name,
    required this.description,
    required this.url,
    required this.location,
    required this.likes,
  });
}

class Posts with ChangeNotifier {
  final List<Post> _posts = [
    Post(
      id: 1,
      name: "I_M_Sinchan",
      description: "Golden view of the Dust",
      url: "assets/images/aditya.jpg",
      location: 'Barunei Hills',
      likes: 100,
    ),
    Post(
      id: 2,
      name: "See_the_sahoo",
      description: "Enjoying my time in Concept Infoway",
      url: "assets/images/abhi.jpg",
      location: "Ahemadbad",
      likes: 344,
    ),
    Post(
      id: 3,
      name: "RKADITYA",
      description: "Pointing finger towards a bright future",
      url: "assets/images/jena.jpg",
      location: "DOT Fest,BBSR",
      likes: 412,
    ),
    Post(
      id: 4,
      name: "clicked_by_adi",
      description: "DM for marraige proposals",
      url: "assets/images/adisahoo.jpg",
      location: "Ranapur",
      likes: 900,
    ),
    Post(
      id: 5,
      name: "PriyankaBarik",
      description: "Being astheic",
      url: "assets/images/penu.jpg",
      location: "Nimapara",
      likes: 342,
    ),
    Post(
      id: 6,
      name: "SatyaPrakashKhatoi",
      description: "Dil chori ho jaye ga sambhal kr",
      url: "assets/images/satya.jpg",
      location: "Badaraghunathpur",
      likes: 430,
    ),
    Post(
      id: 7,
      name: "I_YashRaj",
      description: "Need to go the GYM",
      url: "assets/images/yash.jpg",
      location: "Badaraghunathpur",
      likes: 189,
    ),
  ];
  get getpost {
    return _posts;
  }
}
