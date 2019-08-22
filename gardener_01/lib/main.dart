import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Color(0xffE3F6FF),
        primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE3F6FF),
        body: ListView(
        dragStartBehavior: DragStartBehavior.start,
        children: <Widget>[
        Container(
        color: Color(0xffE3F6FF),
    alignment: Alignment.topCenter,
    height: 450.0,
    width: 1000.0,
    child: Stack(
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
    alignment: Alignment.center,
    decoration: new BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/gardener.png'))),
    ),
    ),
    ],
    ),
    ),
    Container(
    height: 450.0,
    color: Colors.white60,
    ),

    ]
    ,
    )
    );
  }
}
