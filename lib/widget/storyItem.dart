import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String imagePath;
  final String name;
  const StoryItem(this.imagePath, this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration:
              const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle),
            child: ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(35),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
