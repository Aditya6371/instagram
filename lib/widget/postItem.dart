import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  late final String url;
  late final String name;
  late final String location;
  late final int likes;
  late final String caption;
  PostItem(
      {required this.name,
      required this.caption,
      required this.likes,
      required this.location,
      required this.url});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;

    return Column(
      children: [
        const SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(18),
                      child: Image.asset(
                        url,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        SizedBox(
            height: mediaquery.height * 0.4,
            width: mediaquery.width,
            child: Image.asset(
              url,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_rounded,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send_sharp,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmarks_outlined,
                color: Colors.white,
                size: 28,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$likes Likes",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    caption,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "View all comments",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ],
    );
  }
}
