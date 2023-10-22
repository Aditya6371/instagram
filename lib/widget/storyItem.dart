import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String name;
  final String url;
  StoryItem({
    required this.name,
    required this.url,
  });
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   padding: const EdgeInsets.all(3),
        //   decoration: const BoxDecoration(
        //       gradient: LinearGradient(
        //         colors: [Colors.white, Colors.yellow, Colors.red],
        //       ),
        //       shape: BoxShape.circle),
        //   child: Container(
        //     padding: const EdgeInsets.all(5),
        //     decoration:
        //         const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        //     child: ClipOval(
        //       child: SizedBox.fromSize(
        //         size: const Size.fromRadius(35),
        //         child: Image.asset(
        //           "assets/images/aditya.jpg",
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ),
        //   ),
        // );

        Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(2.8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.yellow.shade700,
                Colors.red,
                const Color.fromARGB(255, 100, 14, 60)
              ],
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(35),
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Text(
          name,
          softWrap: true,
          overflow: TextOverflow.fade,
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
