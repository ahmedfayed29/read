import 'package:flutter/material.dart';
import 'package:read/UI/Open/spalcha.dart';
import 'package:read/UI/Subscriptions/help.dart';
import 'package:read/UI/downloads/downloads.dart';
import 'package:read/UI/Subscriptions/info.dart';
import 'package:read/UI/Subscriptions/join.dart';
import 'UI/Open/homepage.dart';
import 'UI/home/mainpage.dart';
import 'UI/home/searchPage.dart';
import 'UI/home/wordauther.dart';
import 'UI/insidepages/pagesForSpecialBook.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new SplashScreen(),
      title: 'أقرألي',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/splacha':(BuildContext  context) =>new SplashScreen(),
        '/downloads':(BuildContext  context) =>new Downloads(),
        '/join':(BuildContext  context)=> new Joins(),
        '/help':(BuildContext  context)=> new Help(),
        '/info':(BuildContext context)=> new Information(),
        '/home':(BuildContext context)=> new HomePage(),
        '/mainpage':(BuildContext context)=> new MainPage(),
        '/pagesForSpecialbook':(BuildContext context)=>SpecialBook(),
        '/workauther':(BuildContext context)=>new Work(),
        '/searchPage':(BuildContext context)=> new Search(),
      },
    );
  }
}
