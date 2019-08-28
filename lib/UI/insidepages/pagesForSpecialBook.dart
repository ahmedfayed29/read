import 'package:flutter/material.dart';
import 'package:read/UI/Open/homepage.dart';
import 'package:read/UI/Subscriptions/help.dart';
import 'package:read/UI/Subscriptions/join.dart';
import 'package:read/UI/joins/profile.dart';
import 'package:read/UI/joins/signcode.dart';
import 'package:read/UI/joins/signinout.dart';
import 'package:read/UI/setting/setting.dart';

class SpecialBook extends StatefulWidget {
  @override
  _SpecialBookState createState() => _SpecialBookState();
}

class _SpecialBookState extends State<SpecialBook> {
  Widget makes() {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('/pagesForSpecialbook');
      },
        child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        width: MediaQuery.of(context).size.width / 3,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Container(
              height: 125,
              width: MediaQuery.of(context).size.width / 3,
             decoration: BoxDecoration(
               image: DecorationImage(
                   image: AssetImage('images/novel.jpg'),fit: BoxFit.cover
               )
             ),
            ),
            new Text(
              'اسم الروايه -',
              style: TextStyle(fontSize: 15),
            ),
            new Text(
              'اسم الراوي -',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            )
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                ListTile(
                  title: Text('سجل الدخول',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInOut()),
                    );
                  },
                ),

              ],
            )),

      ),

      appBar: AppBar(
        title: new Text(
          'عن الكتاب',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        shape: Border(bottom: BorderSide(color: Colors.orange)),
        elevation: 0,
        iconTheme: new IconThemeData(color: Colors.orange),
        leading: new Icon(
          Icons.share,
          color: Colors.orange,
        ),
      ),
      body: new Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: new Column(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, right: 20),
                      child: new Container(
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/novel.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    new Positioned(
                      top: 75,
                      right: 55,
                      child: new Icon(
                        Icons.play_circle_filled,
                        color: Colors.orange,
                        size: 30,
                      ),
                    )
                  ],
                ),
                new SizedBox(
                  width: 10,
                ),
                new Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                      child: new Icon(Icons.note),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                      child: new Icon(Icons.mic),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                      child: new Icon(Icons.home),
                    ),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                      child: new Text(
                        'اسم الراوي',
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                      child: new Text('اسم القارئ',
                          style: TextStyle(
                              color: Colors.deepOrange, fontSize: 15)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                      child: new Text('اسم دار النشر',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            new Container(
              width: 180,
              height: 50,
              child: Center(
                child: new Text(
                  'استمع للكتاب',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Wrap(
                children: <Widget>[
                  new Text(
                    'اي محتوي عن عبارة الكتاب الذي الفه الروائي المذكور اسمه بالاعلي ويقوم بشرح عدد من المحتويات ونبذه خاصة عن هذا الكتاب اللذي اعلنا عنه بالمنشور الاعلي ',
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return makes();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
