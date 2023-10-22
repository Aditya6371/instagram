import 'package:flutter/material.dart';
import 'package:instagram/widget/storyitem.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
        //List.generate(5, (index) => StoryItem());

        //   Row(
        // children: [
        //   Container(
        //     margin: const EdgeInsets.all(5),
        //     padding: const EdgeInsets.all(2.8),
        //     decoration: const BoxDecoration(
        //       shape: BoxShape.circle,
        //       gradient: LinearGradient(
        //         colors: [Colors.white, Colors.yellow, Colors.red],
        //       ),
        //     ),
        //     child: Container(
        //       padding: const EdgeInsets.all(5),
        //       decoration: const BoxDecoration(
        //         color: Colors.black,
        //         shape: BoxShape.circle,
        //       ),
        //       child: ClipOval(
        //         child: SizedBox.fromSize(
        //           size: const Size.fromRadius(35),
        //           child: Image.asset(
        //             "assets/images/aditya.jpg",
        //             fit: BoxFit.cover,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        //   const SizedBox(
        //     width: 20,
        //   ),
        ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return StoryItem(name: '', url: "",);
      },
      scrollDirection: Axis.horizontal,
    );
    //   ],
    // );

    // ),(
    //   children: [
    //     ,
    //     StoryItem(),
    //     StoryItem(),
    //   ],
    // ),
  }
}
