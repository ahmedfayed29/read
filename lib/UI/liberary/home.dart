import 'package:flutter/material.dart';


import '../drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget books() {
    return 
      InkWell(
        onTap: (){
          Navigator.of(context).pushNamed('/pagesForSpecialbook');
        },
        child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          width: MediaQuery.of(context).size.width / 3,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Container(
                  height: 110,
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

  Widget specifications() {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('/pagesForSpecialbook');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.red)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/cat.jpg'), fit: BoxFit.cover),borderRadius: BorderRadius.circular(50)),
              ),
              SizedBox(
                height: 20,
              ),
              new Text('اسم النوع')
            ],
          ),
        ),
      ),
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
          title: new Text(
            'المكتبة',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: new IconThemeData(color: Colors.orange),

          bottom: TabBar(
            indicator: ShapeDecoration(
                shape: Border(bottom: BorderSide(color: Colors.orange))),
            tabs: <Widget>[
              Tab(
                child: new Text(
                  'التصنيفات',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: new Text(
                  'الكتب',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView.builder(
              itemCount: 50,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return specifications();
              },
            ),
            GridView.builder(
              itemCount: 50,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return books();
              },
            ),
          ],
        ),
      ),
    );
  }
}
