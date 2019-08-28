import 'package:flutter/material.dart';
import 'package:read/UI/Open/homepage.dart';
import 'package:read/UI/joins/signin.dart';
import 'package:read/UI/joins/signup.dart';

class SignInOut extends StatefulWidget {
  @override
  _SignInOut createState() => _SignInOut();
}

class _SignInOut extends State<SignInOut> {
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
            new Text(
              'كتب وبرامج مسوعه',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 15,
            ),
            new Text(
              'علي الموبايل',
              style: TextStyle(fontSize: 17),
            ),
            new Container(
              width: 300,
              height: 50,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 220,
                    child: InkWell(
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
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> new SignIn()));
                        }
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange),
                  borderRadius: BorderRadius.circular(5)),
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
                    width: 220,
                    child: InkWell(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          new Icon(
                            Icons.arrow_back_ios,
                            color: Colors.orange,
                          ),
                          new Text(
                            '     حساب جديد',
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> new SignUp()));
                      }
                      ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                  border: Border.all(color: Colors.orange)),
            ),
            SizedBox(
              height: 10,
            ),
            new InkWell(
              child: new Text('تخطي التسجيل',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold)),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> new HomePage()));
              },
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
                              image: AssetImage('images/facebook.jpg')
                            )
                          ),
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
          ],
        ),
      ),
    );
  }
}
