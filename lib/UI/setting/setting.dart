import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool val = true;
  void onChange(value) {
    setState(() {
      val = value;
    });
  }
  bool val2 = true;
  void onChange2(value) {
    setState(() {
      val2 = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: new Text(
          'الأعدادات',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        shape: Border(bottom: BorderSide(color: Colors.orange)),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 50),
        child: new ListView(
          children: <Widget>[
            new Text(
              'الاعدادات العامه',
              style: TextStyle(color: Colors.deepOrange, fontSize: 17),
              textDirection: TextDirection.rtl,
            ),
            new SwitchListTile(
              value: val,
              onChanged: onChange,
              title: Column(
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 90,
                    child: Column(
                      children: <Widget>[
                        new Text(
                          'الابقاء علي الشاشة مضاءة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textDirection: TextDirection.rtl,
                        ),
                        new Text(
                          'سيتم ابقاء الشاشه مضاءه اثناء وضع القياده',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new SwitchListTile(
              value: val2,
              onChanged: onChange2,
              title: Padding(
                padding: const EdgeInsets.only(right:10.0),
                child: new Text(
                  'تحميل عبر واي فاي فقط',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new InkWell(
                child: new Text(
                  'مسح كل التحميلات',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new InkWell(
                child: new Text(
                  'مدة التقديم والتاخير',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
