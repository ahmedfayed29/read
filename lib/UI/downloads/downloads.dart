import 'package:flutter/material.dart';
import 'package:read/UI/Open/homepage.dart';
import 'package:read/UI/Subscriptions/help.dart';
import 'package:read/UI/Subscriptions/join.dart';
import 'package:read/UI/joins/profile.dart';
import 'package:read/UI/joins/signcode.dart';
import 'package:read/UI/setting/setting.dart';

class Downloads extends StatefulWidget {
  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  Widget books() {
    return ListView(
      children: <Widget>[
        Container( width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height-200,
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(image: AssetImage('images/book.png',),height: 50,width: 50,),
              new Text(
                  'عفوا, لا يوجد لديك كتب محمّلة',
                  style: TextStyle(color: Colors.black, fontSize: 22)
                ),

            ],
          ),
        )
      ],
    );
  }
  Widget errors() {
    return ListView(
      children: <Widget>[
        Container( width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height-200,
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(image: AssetImage('images/bookerror.jpg',),height: 50,width: 50,),
              new Text(
                  'عفوا, لا يوجد لديك كتب يتم تحميلها حاليا!',
                  style: TextStyle(color: Colors.black, fontSize: 22)
              ),

            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,

      length: 2,
      child: Scaffold(
        endDrawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.indigoAccent),
          child:new Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 40.0, bottom: 10),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Profile()),
                              );
                            },
                            leading: Icon(Icons.account_circle,
                                size: 70,
                                textDirection: TextDirection.rtl,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: ListTile(
                          title: Text(
                            'ضيف اقرألي',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          subtitle: Text(
                            '@ضيف اقرألي',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                  ListTile(
                    title: Text('الرئيسية',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('الصفحة الشخصية',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                  ),

                  ListTile(
                    title: Text('الاشتراكات',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Joins()),
                      );
                    },
                  ),

                  ListTile(
                    title: Text('كود التسجيل',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Code()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('الاعدادات',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Setting()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('مساعدة',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Help()),
                      );
                    },
                  ),

                ],
              )),

        ),

        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: new IconThemeData(color: Colors.orange),
          brightness: Brightness.dark,
          backgroundColor: Colors.white,
          title: new Text(
            'التحميلات',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          bottom: TabBar(
            indicator: ShapeDecoration(
                shape: Border(bottom: BorderSide(color: Colors.orange))),
            tabs: <Widget>[
              Tab(
                child: Text('جاري التحميل',
                    style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text(
                  'الكتب المحملة',
                  style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),

            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            errors(),
            books(),
          ],
        ),
      ),
    );
  }
}
