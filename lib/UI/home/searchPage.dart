import 'package:flutter/material.dart';
import 'package:read/UI/Open/homepage.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading:
        InkWell(
          onTap: (){
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.deepOrange,)
        ),
      ),
      body: Container(alignment: Alignment.topRight,
        child: new Text('ابحث عن كتاب او مؤلف او دار نشر او مذيع',
          style: TextStyle(fontSize: 20,color: Colors.blueGrey),textDirection: TextDirection.rtl,),
      ),
    );
  }
}
