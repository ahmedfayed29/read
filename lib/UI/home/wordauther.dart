import 'package:flutter/material.dart';
import 'package:read/UI/Open/homepage.dart';
import 'package:read/UI/Subscriptions/help.dart';
import 'package:read/UI/Subscriptions/join.dart';
import 'package:read/UI/joins/profile.dart';
import 'package:read/UI/joins/signcode.dart';
import 'package:read/UI/setting/setting.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  Widget books() {
    return
      InkWell(
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
                    height: 130,
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
          ),
        ),
      );
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

              ],
            )),

      ),
      appBar: AppBar(
        title: new Text(
          'اعمال الكاتب',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: new IconThemeData(color: Colors.orange),

      ),

      body: GridView.builder(
        itemCount: 50,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return books();
        },
      ),
    );
  }
}
