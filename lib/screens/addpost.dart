import 'package:flutter/material.dart';

class AddPostScreen extends StatelessWidget {
  static const routeName = '/addpostscreen';
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Add post Screen",
        style: TextStyle(color: Colors.black, fontSize: 32),
      ),
    );
  }
}
