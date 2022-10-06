import 'package:flutter/material.dart';
import 'package:flutter_instagram/util/account_post.dart';
import 'package:flutter_instagram/util/account_reels.dart';
import 'package:flutter_instagram/util/account_ticket.dart';
import 'package:flutter_instagram/util/bubble_stories.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text(
            '  furkannaglar',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                showBottomSheet(
                    backgroundColor: Colors.black,
                    context: context,
                    builder: (BuildContext bc) {
                      return Container(
                        child: new Wrap(
                          children: <Widget>[
                            new ListTile(
                              leading: new Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                              title: new Text(
                                'Ayarlar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            new ListTile(
                              leading: new Icon(
                                Icons.apps_sharp,
                                color: Colors.white,
                              ),
                              title: new Text(
                                'Gönderi',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            new ListTile(
                              leading: new Icon(
                                Icons.add_circle_outline_rounded,
                                color: Colors.white,
                              ),
                              title: new Text(
                                'Hikaye',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            new ListTile(
                              leading: new Icon(
                                Icons.control_point_duplicate_sharp,
                                color: Colors.white,
                              ),
                              title: new Text(
                                'Öne Çıkan Hikaye',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            new ListTile(
                              leading: new Icon(
                                Icons.connect_without_contact_sharp,
                                color: Colors.white,
                              ),
                              title: new Text(
                                'Canlı',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            new ListTile(
                              leading: new Icon(
                                Icons.import_contacts_sharp,
                                color: Colors.white,
                              ),
                              title: new Text(
                                'Rehber',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
            ),
            IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                showBottomSheet(
                    backgroundColor: Colors.black,
                    context: context,
                    builder: (BuildContext bc) {
                      return Container(
                          child: new Wrap(
                        children: <Widget>[
                          new ListTile(
                              leading: new Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                              title: new Text(
                                'Ayarlar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              onTap: () => {}),
                          new ListTile(
                            leading: new Icon(
                              Icons.av_timer_sharp,
                              color: Colors.white,
                            ),
                            title: new Text('Hareketlerin',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            onTap: () => {},
                          ),
                          new ListTile(
                            leading: new Icon(
                              Icons.archive,
                              color: Colors.white,
                            ),
                            title: new Text('Arşiv',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            onTap: () => {},
                          ),
                          new ListTile(
                            leading: new Icon(
                              Icons.qr_code_2_rounded,
                              color: Colors.white,
                            ),
                            title: new Text('QR Kodu',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            onTap: () => {},
                          ),
                          new ListTile(
                            leading: new Icon(
                              Icons.bookmark_border,
                              color: Colors.white,
                            ),
                            title: new Text('Kaydedilenler',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            onTap: () => {},
                          ),
                          new ListTile(
                            leading: new Icon(
                              Icons.read_more_outlined,
                              color: Colors.white,
                            ),
                            title: new Text('Yakın Arkadaşlar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            onTap: () => {},
                          ),
                          new ListTile(
                            leading: new Icon(
                              Icons.star_border,
                              color: Colors.white,
                            ),
                            title: new Text('Favoriler',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            onTap: () => {},
                          ),
                          new ListTile(
                            leading: new Icon(
                              Icons.coronavirus_outlined,
                              color: Colors.white,
                            ),
                            title: new Text('COVID-19 Bilgi Merkezi',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            onTap: () => {},
                          ),
                        ],
                      ));
                    });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://media-exp1.licdn.com/dms/image/C4D03AQGDPyRMm7cb3g/profile-displayphoto-shrink_800_800/0/1659205953997?e=1670457600&v=beta&t=Iq624PrFm_1bW0jnSg5MrGvdVTj28XtPeaHPp7Zg01s'),
                      child: Container(
                        height: 180,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        ' 4',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Gönderi',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '  359',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        '  Takipçi',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '   261',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        '   Takip',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210.0),
              child: Column(
                children: [
                  Text(
                    'Furkan Nadir Ağlar',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text('  Cankurtaran & Yüzme Eğitmeni')
                ],
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(5),
                  child: Center(
                      child: Text(
                    'Profili Düzenle',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ProfileStories(text: 'Öne Çıkanlar'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.apps_sharp)),
                      Tab(icon: Icon(Icons.video_collection_rounded)),
                      Tab(icon: Icon(Icons.account_box_outlined)),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 4,
                child: Container(
                  child: TabBarView(
                    children: [
                      AccountPost(),
                      AccountReels(),
                      AccountTicket(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
