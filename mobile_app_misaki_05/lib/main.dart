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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0),
            Text('Hi Ricki'),
            Text('Welcome Back'),
            Container(height: 50.0,width: 200.0,color: Colors.blueGrey,),
            Text('You have unread letters'),
            Text('12'),
            SizedBox(height: 20.0,),
            RaisedButton(
              color: Colors.red.withOpacity(0.5),
              child: Icon(Icons.headset),
              onPressed: (){},
            )
            

          ],
        ),
      ),
      
    );
  }
}
