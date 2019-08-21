import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, right: 40.0, left: 35.0, bottom: 10.0),
                child: Container(
                  color: Color(0xffE3F6FF),
                  foregroundDecoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("images/gardener.png"),
                    fit: BoxFit.contain,
                  )),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
