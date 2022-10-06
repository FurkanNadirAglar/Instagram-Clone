import 'package:flutter/material.dart';
import 'package:flutter_instagram/Screens/homePage.dart';
import 'package:flutter_instagram/Screens/sing.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = AppBar().preferredSize.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'furkannaglar',
            style: TextStyle(fontSize: 25),
          ),
          leading: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.video_call_outlined, size: 35),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 330),
                  child: IconButton(
                    icon: Icon(Icons.add, size: 35),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SingPage()),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 7,
              ),
            ],
          ),
          backgroundColor: Colors.black,
        ),
        body: MyChat(),
      ),
    );
  }
}

class MyChat extends StatelessWidget {
  // Generate some dummy data
  final List dummyList = List.generate(10, (index) {
    return {"id": index, "title": "name $index", "subtitle": "Görüldü $index"};
  });

  MyChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) => Card(
            elevation: 4,
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1664855223548-2b1e9831ecbd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3OXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
              ),
              title: Text(
                dummyList[index]["title"],
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                "Görüldü",
                style: TextStyle(color: Colors.grey[800]),
              ),
              trailing: Icon(
                Icons.add_a_photo,
                size: 30,
              ),
            ),
          ),
        )));
  }
}
