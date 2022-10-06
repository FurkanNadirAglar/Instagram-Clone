import 'package:flutter/material.dart';

class AccountPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 5,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Card(
              child: Container(
                height: 20,
                child: Image.network(
                  'https://images.unsplash.com/photo-1664999407875-b4d94999f9be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
                  fit: BoxFit.fill,
                ),
                color: Colors.deepPurple[100],
              ),
            ),
          );
        });
  }
}
