import 'package:flutter/material.dart';
import 'package:flutter_instagram/Screens/searchPage.dart';
import 'package:flutter_instagram/util/bubble_stories.dart';
import 'package:flutter_instagram/util/chat.dart';
import 'package:flutter_instagram/util/user_posts.dart';

class HomePage extends StatelessWidget {
  final List people = [
    'Furkan',
    'Hakan',
    'Kaan',
    'Taha',
    'Muhammet',
    'Serkan',
    'Yusuf',
    'Mert',
    'Zülfücan'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontStyle: FontStyle.normal),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(text: people[index]);
                  })),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UsersPosts(
                  name: people[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
