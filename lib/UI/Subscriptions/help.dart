import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  List variables = [
    'اواجه مشكلة في الاشتراكات',
    'اواجه مشكلة في التحميل',
    'اواجه مشكلة في الاستماع',
    'التطبيق لا يعمل معي',
    'اخري'
  ];
  String newValue='اواجه مشكلة في الاشتراكات';
  void back() {
    Navigator.of(context).pushNamed('/join');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: back,
          color: Colors.orange,
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image(
                image: AssetImage('images/help.jpg'),
                height: 150,
                width: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            new Text(
              'نحن هنا لمساعدتك',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              textAlign: TextAlign.center,
            ),
//            DropdownButton(
//              items: variables,
//              onChanged: (String newValue){
//
//              },
//
//            ),
            SizedBox(
              height: 10,
            ),
            new TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              autocorrect: true,
              decoration: InputDecoration(
                  hintText: 'ادخل البريد الالكتروني',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(
              height: 10,
            ),
            new TextField(
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: 'ادخل رقم التليفون',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(
              height: 10,
            ),
            new TextFormField(
              textAlign: TextAlign.center,
              maxLines: 3,
              decoration: InputDecoration(
                  hintText: 'اخبرنا بالمزيد عن المشكلة اللتي تواجهها',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: new FlatButton(
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  debugPrint('asdasd');
                },
                padding: EdgeInsets.all(10),
                child: new Text(
                  'ارسال',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                color: Colors.orange,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
