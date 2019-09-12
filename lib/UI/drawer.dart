import 'package:flutter/material.dart';
import 'package:read/UI/setting/setting.dart';

import 'Open/homepage.dart';
import 'Subscriptions/help.dart';
import 'Subscriptions/join.dart';
import 'joins/profile.dart';
import 'joins/signcode.dart';
import 'joins/signinout.dart';

class Drawers extends StatefulWidget {
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child:new Drawer(
          child: Container(
            color: Colors.deepOrange,
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
            ),
          )),


    );
  }
}
