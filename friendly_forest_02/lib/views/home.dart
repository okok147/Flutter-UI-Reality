import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:friendly_forest_02/router.dart';
import 'package:friendly_forest_02/utils.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 1 / 5,
        child: Container(
          color: Colors.blue,
          child: Text('Hello, world!'),
        ),
      ),
    );
  }
}
