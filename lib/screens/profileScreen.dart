import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: Center(
        child: Text(
          "Profile of user",
          style: TextStyle(
            color: Theme.of(context).hintColor,
          ),
        ),
      ),
    );
  }
}
