import 'package:flutter/material.dart';
import 'package:read/UI/Subscriptions/join.dart';
import 'package:read/UI/downloads/downloads.dart';
import 'package:read/UI/home/mainpage.dart';
import 'package:read/UI/liberary/home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 3;
  List pages=[Joins(),Downloads(),Home(),MainPage()];

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
        length: 2,
        child:
        Scaffold(

          bottomNavigationBar: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            selectedItemColor: Theme.of(context).accentColor,
            currentIndex: _selectedIndex,
            onTap: (index) {
              print(index);
              setState(() {
                _selectedIndex = index;

              });

            },

            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.headset_mic),
                  title: (Text(
                    'الاشتراكات',
                  )),
                  backgroundColor: Colors.orange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_drop_down_circle),
                  title: (Text('التحميلات'))),
//              BottomNavigationBarItem(
//                  icon: Icon(
//                    Icons.play_circle_filled,
//                    color: Colors.orange,
//                  ),
//                  title: Text('إقرأ'),
//                  backgroundColor: Colors.orange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections_bookmark),
                  title: (Text('المكتبة'))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: (Text('الرئيسية')))
            ],
          ),
          body: pages[_selectedIndex],
        ));
  }
}
