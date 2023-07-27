import 'package:flutter/material.dart';

class postItem extends StatelessWidget {
  postItem({
    required this.text,
    required this.likes,
    required this.image,
  });

  final String image;
  final String text;
  final int likes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: const BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(15),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: TextStyle(color: Theme.of(context).hintColor),
                ),
              ],
            ),
            IconButton(
              alignment: Alignment.topRight,
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Theme.of(context).hintColor,
              ),
            ),
          ],
        ),
        Container(
          height: 450,
          width: 450,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Theme.of(context).hintColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.comment_outlined,
                color: Theme.of(context).hintColor,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_outward_sharp,
                  color: Theme.of(context).hintColor,
                ))
          ],
        ),
        Text(
          "$likes likes",
          textAlign: TextAlign.center,
          style: TextStyle(color: Theme.of(context).hintColor),
        )
      ],
    );
  }
}
