import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:mobile_application_activity_03/Pages/home.dart';
import 'package:mobile_application_activity_03/Pages/profile.dart';
import 'package:mobile_application_activity_03/Pages/challenges.dart';
import 'package:mobile_application_activity_03/utils.dart';
import 'package:intl/intl.dart';

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
  StreamSubscription periodicSub;
  var passSeconds = 0;

  var minutes = 1;

  int _selectedIndex = 0;

  final _pageOption = [
    HomePage(),
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

    periodicSub = new Stream.periodic(const Duration(seconds: 1), (v) => v)
        .take(10000)
        .listen((count) => print(passSeconds++));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
            icon: Icon(Icons.arrow_forward),
            iconSize: 35,
            alignment: Alignment.topRight,
            color: Colors.redAccent,
            onPressed: () {},
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
                  style: TextStyle(color: Colors.blueAccent, fontSize: 17.5),
                ),
                Text(
                  'sec ago',
                  style: normalTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: FractionallySizedBox(
                    child: InkWell(
                      child: Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.blueGrey,
                        ),
                      ),
                      onTap: () {},
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
              //pause the loop
              periodicSub.cancel();
              _selectedIndex = index;
            },
          ),
          items: [
            BottomNavyBarItem(
                icon: Icon(
                  Icons.apps,
                  color: _selectedColor[_selectedIndex],
                ),
                title: Text('Home'),
                activeColor: bottomActiveColor),
            BottomNavyBarItem(
                icon: Icon(
                  Icons.people,
                  color: _selectedColor[_selectedIndex],
                ),
                title: Text('Users'),
                activeColor: bottomActiveColor),
            BottomNavyBarItem(
              icon: Icon(
                Icons.local_drink,
                color: _selectedColor[_selectedIndex],
              ),
              title: Text('Challenges'),
              activeColor: bottomActiveColor,
            ),
            BottomNavyBarItem(
              icon: Icon(
                Icons.settings,
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
