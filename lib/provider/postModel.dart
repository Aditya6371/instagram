import 'package:flutter/material.dart';
import 'package:instagram/provider/post.dart';

class postModel with ChangeNotifier {
  final List<post> _items = [
    post(
      name: 'i_m_s.i.n.c.h.a.n',
      caption: 'Sunset is not the end its the start of the beautiful night',
      likes: 123,
      imageUrl: 'assets/images/aditya.jpg',
    ),
    post(
      name: 'priyanka.barik.3',
      caption: 'Eyes can talk a lot more than ',
      likes: 432,
      imageUrl: "assets/images/penu.jpg",
    ),
    post(
      name: 'rkaditya89',
      caption: 'Live in now',
      likes: 700,
      imageUrl: "assets/images/jena.jpg",
    ),
    post(
      name: 'see_the_sahoo',
      caption: 'Smile to ur problems',
      likes: 654,
      imageUrl: "assets/images/abhi.jpg",
    ),
    post(
      name: 'i_m_aditya._',
      caption: 'Being my own brand',
      likes: 1004,
      imageUrl: "assets/images/adisahoo.jpg",
    ),
    post(
      name: 'satyaprakash',
      caption: 'be cool be happy',
      likes: 102,
      imageUrl: "assets/images/satya.jpg",
    ),
    post(
      name: 'iyashrj',
      caption: 'Be the reason of others smile',
      likes: 999,
      imageUrl: "assets/images/yash.jpg",
    ),
  ];
  List<post> get items {
    return [..._items];
  }

  void addposts(post posts) {
    final newPost = post(
        name: posts.name,
        caption: posts.caption,
        likes: posts.likes,
        imageUrl: posts.imageUrl);
    _items.insert(0, newPost);
    notifyListeners();
  }
}
