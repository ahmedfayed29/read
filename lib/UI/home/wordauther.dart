import 'package:flutter/material.dart';


import '../drawer.dart';

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

      endDrawer:new Drawers(),
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
