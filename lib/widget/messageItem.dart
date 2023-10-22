import 'package:flutter/material.dart';

class Messageitem extends StatelessWidget {
  final String name;
  final String url;
  final String time;
  final String msg;

  const Messageitem({
    required this.name,
    required this.msg,
    required this.time,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(29),
              child: Image.asset(
                url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            "$msg .$time",
            style: const TextStyle(color: Colors.grey),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: Colors.white,
              )),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
