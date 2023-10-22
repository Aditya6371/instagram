import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/searchscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SearchBar(
              leading: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              hintText: 'Search',
              backgroundColor: MaterialStatePropertyAll(Colors.grey.shade800),
            )
            // TextField(
            //   decoration: InputDecoration(
            //       icon: Icon(Icons.search),
            //       fillColor: Colors.grey,
            //       hintText: 'Search',
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(20))),
            // )
          ],
        ),
      ),
    );
  }
}
