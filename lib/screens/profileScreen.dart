import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profilescreen';
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Profile Screen",
        style: TextStyle(color: Colors.black, fontSize: 32),
      ),
    );
  }
}
