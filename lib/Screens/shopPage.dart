import 'package:flutter/material.dart';
import 'package:flutter_instagram/util/explore_grid.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 193.0),
          child: Text(
            'Mağaza',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        toolbarHeight: 70,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.class__outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Container(
        child: ShopGrid(),
      ),
    );
  }
}
