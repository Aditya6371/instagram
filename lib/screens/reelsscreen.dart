import 'package:flutter/material.dart';

class ReelScreen extends StatelessWidget {
  static const routeName = '/reelsscreen';
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Reels Screen",
        style: TextStyle(color: Colors.black, fontSize: 32),
      ),
    );
  }
}
