import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:read/UI/Open/homepage.dart';
import 'package:read/UI/Subscriptions/help.dart';
import 'package:read/UI/Subscriptions/join.dart';
import 'package:read/UI/home/searchPage.dart';
import 'package:read/UI/joins/profile.dart';
import 'package:read/UI/joins/signcode.dart';
import 'package:read/UI/joins/signinout.dart';
import 'package:read/UI/setting/setting.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<ScreenHiddenDrawer> items=new List();

  Widget page() {
    return Card(
      child: Container(
        height: 250,
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0, right: 8.0),
                child: new Text(
                  'اسم الجوله',
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'images/asssss.jpeg',
                ),
                fit: BoxFit.fitWidth,
              )),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topRight,
              height: 150,
            ),
            SizedBox(
              height: 3,
            ),
            new Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: new Text(
                    'المحتوي الذي يتحدث عنه الخبر',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                new Icon(
                  Icons.play_arrow,
                  size: 35,
                  color: Colors.orange,
                )
              ],
            ),
            new Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: new Text(
                    'صوت ملقي النشرة',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget makes() {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('/pagesForSpecialbook');

      },

      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          width: MediaQuery.of(context).size.width / 3,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
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
                ),                new Text(
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
        ),
      ),
    );
  }

  Widget main() {
    return Padding(

      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed('/workauther');
                  },
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.deepOrange,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 2.0),
                  child: Container(
                    child: Text(
                      'اسم صاحب العمل',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
            new SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return makes();
                  }),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 2,
        child: new Scaffold(

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
            bottom: TabBar(

              indicatorColor: Colors.orange,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.grey,
              tabs: <Widget>[
                new Tab(
                  text: 'البرامج',
                ),
                new Tab(
                  text: ('الكتب المميزة'),
                ),
              ],
              isScrollable: false,
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0.0,
            iconTheme: new IconThemeData(color: Colors.orange),
            leading: Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => Search()));
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.orange,
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            title: Text(
              'الرئيسية',
              style: TextStyle(color: Colors.black),
            ),
            actions: <Widget>[],
          ),
          body: TabBarView(
            children: <Widget>[
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return page();
                },
              ),
              ListView(
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 10.0),
                      child: new Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Text(
                            'وفر مع قيمة السنوى',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal),
                            textDirection: TextDirection.ltr,
                          ),
                          Expanded(
                            child: Text(''),
                          ),
                          RaisedButton(
                            color: Colors.deepOrange,
                            textColor: Colors.white,
                            child: Text(
                              'اشترك',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  textBaseline: TextBaseline.alphabetic),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed('/join');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return main();
                      },
                      itemCount: 20,
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
