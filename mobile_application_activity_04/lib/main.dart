import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:mobile_application_activity_03/Pages/activity.dart';
import 'package:mobile_application_activity_03/Pages/profile.dart';
import 'package:mobile_application_activity_03/Pages/challenges.dart';
import 'package:mobile_application_activity_03/utils.dart';
import 'package:dio/dio.dart';

/* Launch simulator with flutter in a quick way:

open -a simulator
flutter run


Terminate simluator:
press 'q' in Terminal

*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void getHttp() async {
    try {
      Response response = await Dio().get("https://google.com");
      print(response);
    } catch (e) {
      print(e);
    }
  }

  var _selectedIndex = 0;
  StreamSubscription periodicSub;
  var passSeconds = 0;

  var minutes = 1;

  var _pageOption = [
    Activity(),
    Profile(),
    Challenges(),
    Profile(),
  ];

  var _selectedColor = [
    bottomUnactiveColor,
    Colors.deepPurpleAccent,
    Colors.red,
    Colors.blueAccent,
  ];

  //use when on Pressed:

  @override
  Widget build(BuildContext context) {
    //yeah! the time loop is working!To prevent duplicate,cancel the event when calling the widget again,
    //so the loop would continue but not duplicate itself.

    periodicSub = new Stream.periodic(const Duration(seconds: 60), (v) => v)
        .take(10000)
        .listen((count) => print(passSeconds++));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
            icon: Icon(
              const IconData(0xf269, fontFamily: 'CustomAppIcon'),
            ),
            iconSize: 32,
            alignment: Alignment.topRight,
            color: Colors.redAccent,
            onPressed: () {
              setState(
                () {
                  _selectedIndex = _selectedIndex;
                  //pause the loop
                  periodicSub.cancel();
                },
              );
            },
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Last update ',
                  style: normalTextStyle,
                ),
                Text(
                  '$passSeconds ',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 15.5),
                ),
                Text(
                  'mins ago',
                  style: normalTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    height: 42,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/id/1062/5092/3395'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _pageOption[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
        child: BottomNavyBar(
          selectedIndex: _selectedIndex,

          showElevation: false, //R use this to remove appBar's elevation
          onItemSelected: (index) => setState(
            () {
              _selectedIndex = index;
              //pause the loop
              periodicSub.cancel();
            },
          ),
          items: [
            BottomNavyBarItem(
                icon: Icon(
                  const IconData(0xf601, fontFamily: 'CustomAppIcon'),
                  color: _selectedColor[_selectedIndex],
                ),
                title: Text('Activity'),
                activeColor: bottomActiveColor),
            BottomNavyBarItem(
                icon: Icon(
                  const IconData(0xe800, fontFamily: 'CustomAppIcon'),
                  color: _selectedColor[_selectedIndex],
                ),
                title: Text('Users'),
                activeColor: bottomActiveColor),
            BottomNavyBarItem(
              icon: Icon(
                const IconData(0xe801, fontFamily: 'CustomAppIcon'),
                color: _selectedColor[_selectedIndex],
              ),
              title: Text('Challenges'),
              activeColor: bottomActiveColor,
            ),
            BottomNavyBarItem(
              icon: Icon(
                const IconData(0xe802, fontFamily: 'CustomAppIcon'),
                color: _selectedColor[_selectedIndex],
              ),
              title: Text('Settings'),
              activeColor: bottomActiveColor,
            ),
          ],
        ),
      ),
    );
  }
}
