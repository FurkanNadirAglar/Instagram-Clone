import 'package:flutter/material.dart';
import 'package:flutter_instagram/util/explore_grid.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            color: Colors.grey[400],
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                  ),
                  onPressed: () {},
                ),
                Container(
                  child: Text(
                    'Ara',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
