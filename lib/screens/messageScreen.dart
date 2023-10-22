import 'package:flutter/material.dart';
import 'package:instagram/provider/message.dart';
import 'package:instagram/widget/messageitem.dart';
import 'package:provider/provider.dart';

class MessageScreen extends StatelessWidget {
  static const routeName = '/messagescreen';
  @override
  Widget build(BuildContext context) {
    final List<Message> loadedmessage =
        Provider.of<Messages>(context).getmessages;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              "i_m_sinchan",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.expand_more_outlined,
                size: 28,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam_outlined,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.note_alt_rounded,
              size: 28,
            ),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchBar(
              leading: Icon(
                Icons.search,
                color: Colors.grey.shade700,
              ),
              hintText: 'Search',
              backgroundColor: MaterialStatePropertyAll(Colors.grey.shade900),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Messages",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Requests",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: loadedmessage.length,
                itemBuilder: (BuildContext context, int index) {
                  return Messageitem(
                      name: loadedmessage[index].name,
                      msg: loadedmessage[index].msg,
                      time: loadedmessage[index].time,
                      url: loadedmessage[index].url);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
