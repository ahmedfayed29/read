import 'package:flutter/material.dart';

import '../drawer.dart';

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
        endDrawer:new Drawers(),

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
