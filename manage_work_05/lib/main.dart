import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).copyWith().size.height;
    var deviceWidth = MediaQuery.of(context).copyWith().size.height;

    var firstRowTabBoxStyle = Container(
      height: deviceHeight / 4.3,
      width: deviceWidth,
      decoration: new BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.only(
            topRight: const Radius.circular(12.0),
            bottomRight: const Radius.circular(12.0)),
      ),
    );

    var rowTabBoxStyle = Container(
      height: deviceHeight / 4.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              Container(
                height: deviceHeight,
                width: deviceWidth / 13,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    firstRowTabBoxStyle,
                    SizedBox(
                      height: 5.0,
                    ),
                    rowTabBoxStyle,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
