import 'package:flutter/material.dart';

class post with ChangeNotifier {
  final String name;
  final String caption;
  final double likes;
  final String imageUrl;
  bool isliked;

  post({
    required this.name,
    required this.caption,
    required this.likes,
    required this.imageUrl,
    this.isliked = false,
  });

  void toggleLiked() {
    isliked = !isliked;
    notifyListeners();
  }
}
