import 'package:flutter/material.dart';
import 'package:read/UI/Open/homepage.dart';
import 'package:read/UI/Subscriptions/help.dart';
import 'package:read/UI/Subscriptions/join.dart';
import 'package:read/UI/joins/signcode.dart';
import 'package:read/UI/joins/signinout.dart';
import 'package:read/UI/setting/setting.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        iconTheme: new IconThemeData(color: Colors.orange),
        shape: Border(bottom: BorderSide(color: Colors.orange)),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: new Text(
          'تعديل الملف الشخصي',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 15.0, left: 15.0),
        child: new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Container(
                    width: 200,
                    child: new TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: 'ادخل الاسم',
                          prefixIcon: Icon(
                            Icons.border_color,
                            size: 20,
                          ),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.orangeAccent, width: 20))),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      new Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orangeAccent),
                      ),
                      new Positioned(
                        width: 100,
                        height: 100,
                        child: new Icon(
                          Icons.camera_alt,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, right: 30.0, left: 30.0),
              child: new TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    hintText: 'اسم المستخدم',
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, right: 30.0, left: 30.0),
              child: new TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    hintText: 'البريد الالكتروني',
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Container(
                    width: 120,
                    child: new TextField(
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                          hintText: 'النوع',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.orangeAccent, width: 20),
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                  new Container(
                    width: 140,
                    child: new TextField(
                      decoration: InputDecoration(
                          hintText: 'تاريخ الميلاد',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.orangeAccent,
                              ))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 8.0, right: 30.0, left: 30.0, bottom: 8.0),
              child: new TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'رقم التليفون',
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Text('تاريخ انتهاء الباقه'),
                new Text('اسم الباقه'),
                new Text('حالة المشترك'),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Text(
                  '--',
                  textAlign: TextAlign.center,
                ),
                new Text(
                  '--',
                  textAlign: TextAlign.start,
                ),
                new Text('غير مشترك'),
              ],
            ),
            new Container(
              width: 300,
              height: 40,
              child: Center(
                child: new Text(
                  'حفظ',textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(5)
              ),
            )
          ],
        ),
      ),
    );
  }
}
