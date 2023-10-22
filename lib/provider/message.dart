import 'package:flutter/material.dart';

class Message {
  late int id;
  late String url;
  late String name;
  late String msg;
  late String time;
  Message({
    required this.id,
    required this.name,
    required this.msg,
    required this.url,
    required this.time,
  });
}

class Messages with ChangeNotifier {
  final List<Message> _messages = [
    Message(
      id: 1,
      name: 'See_the_sahoo',
      msg: 'hey!',
      url: "assets/images/abhi.jpg",
      time: '1 min',
    ),
    Message(
      id: 2,
      name: 'clicked_by_me',
      msg: 'Mentioned you in their story',
      url: "assets/images/adisahoo.jpg",
      time: '20 min',
    ),
    Message(
      id: 3,
      name: 'Rkaditya',
      msg: 'Yo bruhhh',
      url: "assets/images/jena.jpg",
      time: '40 min',
    ),
    Message(
      id: 4,
      name: 'Priyanka',
      msg: 'Konichiwa',
      url: "assets/images/penu.jpg",
      time: '1 hr',
    ),
    Message(
      id: 5,
      name: 'Satyaprakashkhatoi',
      msg: 'Bhak sala',
      url: "assets/images/satya.jpg",
      time: '10 days',
    ),
    Message(
      id: 6,
      name: 'i_m_yashraj',
      msg: 'Kab aye ga bruhh',
      url: "assets/images/yash.jpg",
      time: '12 days',
    ),
  ];
  get getmessages {
    return _messages;
  }
}
