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
        child: Padding(
          padding:
          const EdgeInsets.only(right: 30.0, left: 30.0, bottom: 10.0),
          child: new TextField(
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.end,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: 'ابحث عن كتاب او مؤلف او دار نشر او مذيع',
                hintStyle: TextStyle(fontSize: 20,color: Colors.blueGrey),
          ),


        ),
      ),
    ));
  }
}

