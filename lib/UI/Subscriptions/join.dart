import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:read/UI/Open/homepage.dart';

class Joins extends StatefulWidget {
  @override
  _JoinsState createState() => _JoinsState();
}

class _JoinsState extends State<Joins> {
  void help() {
    Navigator.of(context).pushNamed('/help');
  }

  void info() {
    Navigator.of(context).pushNamed('/info');
  }

  @override
  Widget build(BuildContext context) {
    Widget firstPage() {
      return Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.deepPurple.shade900),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
            child: Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  child: InkWell(
                    child: Icon(
                      Icons.close,
                      size: 22,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blueAccent),
                ),
                Expanded(
                    child: Row(
                  children: <Widget>[
                    new FlatButton(
                        onPressed: info,
                        child: new Text(
                          'شروط الأستخدام',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    new Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    new FlatButton(
                        onPressed: help,
                        child: new Text(
                          'مساعده',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ],
                ))
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 50,
            child: new Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage('images/join.jpeg'), fit: BoxFit.cover),
              ),
            ),
          ),
          new Positioned(
              bottom: 100,
              left: 50,
              child: Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                       left: 15, right: 15,),
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        'الخطة السنوية',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      new Text(
                        'ُEGP 319.99',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Container(
                        width: 343,
                        height: 125,
                        child: ListView(
                          padding: EdgeInsets.all(0),
                          children: <Widget>[
                            new Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                new Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.indigo),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                new Text(
                                  'اكبر مكتبة صوتيه متجدده اسبوعياّ',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: new Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.indigo),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 250,
                                  height: 50,
                                  child: new Text(
                                    'استمتع الي مئات الكتب والروايات بلا حدود',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: new Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.indigo),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                new Container(
                                  width: 250,
                                  height: 50,
                                  child: new Text(
                                    'حمل كتبك المفضله واستمع اليها بدون اتصال بالانترنت',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: new Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.indigo),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                new Container(
                                  width: 250,
                                  height: 60,
                                  child: new Text(
                                    'استمتع ب انتاجات صوتيه حصرية لكتابك المفضلين',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(fontSize: 17),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              bottom: 75,
              left: 130,
              child: FlatButton(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent)),
                  color: Colors.blueAccent,
                  padding:
                      EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                  onPressed: () {
                    debugPrint('adasd');
                  },
                  child: new Text(
                    'اشترك الان',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ))),
          Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width / 3,
            child: new FlatButton(
              onPressed: null,
              child: Text('تفعيل الاشتراك',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          )
        ],
      );
    }

    Widget secondPage() {
      return Stack(
        children: <Widget>[
          Container(),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
            child: Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  child: Icon(
                    Icons.close,
                    size: 22,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blueAccent),
                ),
                Expanded(
                    child: Row(
                  children: <Widget>[
                    new FlatButton(
                        onPressed: info,
                        child: new Text(
                          'شروط الأستخدام',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        )),
                    new Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    new FlatButton(
                        onPressed: help,
                        child: new Text(
                          'مساعده',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        )),
                  ],
                ))
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 50,
            child: new Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage('images/second.jpeg'), fit: BoxFit.cover),
              ),
            ),
          ),
          new Positioned(
              bottom: 100,
              left: 50,
              child: Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 15, right: 15, bottom: 20),
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        'الخطة الشهريه',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      new Text(
                        'ُEGP 35.99',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Container(
                        width: 250,
                        height: 125,
                        child: ListView(
                          padding: EdgeInsets.all(0),

                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: new Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.blueAccent),
                                    width: 10,
                                    height: 10,
                                  ),
                                ),
                                new Text(
                                  'استمع بدون اعلانات',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                )
                              ],
                            ),
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: new Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.blueAccent),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                new Container(
                                  width: 230,
                                  height: 50,
                                  child: new Text(
                                    '7 ايام تجربة مجانيه.( كريدت كارد فقط)',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(fontSize: 17),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: new Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.blueAccent),
                                    width: 10,
                                    height: 10,
                                  ),
                                ),
                                new Text(
                                  'يمكنك الالغاء في اي وقت',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: new Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.blueAccent),
                                    width: 10,
                                    height: 10,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                new Container(
                                  width: 225,
                                  height: 50,
                                  child: new Text(
                                    'تخصم قيمة الاشتراك بعد نهاية التجربة المجانية',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(fontSize: 17),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              bottom: 75,
              left: 130,
              child: FlatButton(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent)),
                  color: Colors.deepOrange,
                  padding:
                      EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                  onPressed: () {
                    debugPrint('adasd');
                  },
                  child: new Text(
                    'اشترك الان',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ))),
          Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width / 3,
            child: new FlatButton(
              onPressed: null,
              child: Text('تفعيل الاشتراك',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          )
        ],
      );
    }

    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[firstPage(), secondPage()],
      ),
    );
  }
}
