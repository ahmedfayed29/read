import 'package:flutter/material.dart';
import 'package:read/UI/joins/signup.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/readforme.png'),
                    fit: BoxFit.cover),
              ),
              width: 120,
              height: 120,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 30.0, left: 30.0, bottom: 10.0),
              child: new TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    hintText: 'البريد الاكتروني',
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 30.0, left: 30.0, bottom: 10.0),
              child: new TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    hintText: 'كلمة السر',
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            new Container(
              width: 350,
              height: 50,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 250,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Icon(
                          Icons.arrow_back_ios,
                          color: Colors.orange,
                        ),
                        new Text(
                          'تسجيل الدخول',
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange),
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(5)),
            ),
            SizedBox(
              height: 10,
            ),
            new InkWell(
                child: new Text(
              'نسيت كلمة المرور؟',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 15,
            ),
            new Text(
              'ـــــــــــــــــ    أو     ـــــــــــــــــ',
              textScaleFactor: 2,
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 10,
            ),
            new Container(
              width: 300,
              height: 50,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 260,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/facebook.jpg'))),
                        ),
                        new Text(
                          'تسجيل الدخول بواسطة فيسبوك',
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.indigo,
                  border: Border.all(color: Colors.indigo)),
            ),
            SizedBox(
              height: 15,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new InkWell(child: new Text('ليس لديك حساب؟   ',style: TextStyle(fontSize: 15),),),
                new InkWell(
                  child: new Text(
                    'انضم لنا الأن',
                    style: TextStyle(color: Colors.redAccent,fontSize: 15),),
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new SignUp()));
                },
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
