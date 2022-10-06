import 'package:flutter/material.dart';

class UsersPosts extends StatelessWidget {
  final String name;
  UsersPosts({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  showBottomSheet(
                      backgroundColor: Colors.black,
                      context: context,
                      builder: (context) {
                        return Wrap(
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.star_border,
                                color: Colors.white,
                              ),
                              title: TextButton(
                                onPressed: () {},
                                child: Text('Favorilere Ekle',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                              ),
                            ),
                            ListTile(
                              leading:
                                  Icon(Icons.person_off, color: Colors.white),
                              title: TextButton(
                                onPressed: () {},
                                child: Text('Takibi Bırak',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                              ),
                            ),
                            ListTile(
                              leading:
                                  Icon(Icons.info_outline, color: Colors.white),
                              title: TextButton(
                                onPressed: () {},
                                child: Text('Bu Gönderiyi Neden Görüyorsun?',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                              ),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.hide_image_outlined,
                                color: Colors.white,
                              ),
                              title: TextButton(
                                onPressed: () {},
                                child: Text('Gizle',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                              ),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.error,
                                color: Colors.white,
                              ),
                              title: TextButton(
                                onPressed: () {},
                                child: Text('Şikayet Et',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                              ),
                            )
                          ],
                        );
                      });
                },
              ),
            ],
          ),
        ),
        Card(
          child: Container(
            height: 200,
            width: 700,
            child: Image.network(
              'https://images.unsplash.com/photo-1664740688843-0e8ad76b07a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
            color: Colors.grey[400],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.favorite_outline_rounded,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.chat_bubble_outline),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.bookmark_border_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Text(
                'Liked by ',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Text(
                ' and ',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8),
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
                ' Deneme Gönderisi',
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ],
    );
  }
}
