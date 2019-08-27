import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Code extends StatefulWidget {
  @override
  _CodeState createState() => _CodeState();
}

class _CodeState extends State<Code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: new Container(
        child: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/readforme.png'),
                      fit: BoxFit.cover),
                ),
                width: 100,
                height: 100,
              ),
              new Text(
                'هل لديك كود تسجيل؟ أدخله هنا',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right:30.0,left: 30.0),
                child: new TextField(
                  textAlign: TextAlign.center,
                   decoration: InputDecoration(
                     hintText: 'كود التسجيل',
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:BorderSide(color: Colors.grey)
                    )
                   ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    child: new Container(
                      child: Center(child: new Text('ارسال',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                      width: 140,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                  ),
                  InkWell(
                    child: new Container(
                      child: Center(child: new Text('الغاء',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                      width: 140,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
