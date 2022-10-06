import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: 12,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Card(
              child: Container(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLP4qp4gBW3Cr2ZkmM05qWTG27rYV6867Rvg&usqp=CAU',
                  fit: BoxFit.fill,
                ),
                color: Colors.deepPurple[100],
              ),
            ),
          );
        });
  }
}

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 45,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Card(
              child: Container(
                child: Image.network(
                  'https://images.unsplash.com/photo-1588333313104-1778f102e5ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHBsYXklMjBmb290YmFsbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                  fit: BoxFit.fill,
                ),
                color: Colors.deepPurple[100],
              ),
            ),
          );
        });
  }
}
