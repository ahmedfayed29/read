import 'package:flutter/material.dart';

import '../drawer.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:new Drawers(),
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
