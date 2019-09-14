import 'package:flutter/material.dart';
import 'package:friendly_forest_02/views/home.dart';
import 'package:flutter/widgets.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('News,Hello, world!'),
    );

  }
}
