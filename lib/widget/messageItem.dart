import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  const MessageItem(
    this.duration,
    this.imagePath,
    this.message,
    this.name,
  );
  final String imagePath;
  final String name;
  final int duration;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(22),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          title: Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            '$message .$duration min',
            style: const TextStyle(color: Colors.grey),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        // Divider(
        //   color: Colors.grey.shade800,
        // ),
      ],
    );
  }
}
