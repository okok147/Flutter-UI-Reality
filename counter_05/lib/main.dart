import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePageState createState() => new MyHomePageState();
}

class MyCustomCard extends StatelessWidget {
  MyCustomCard({this.colors});

  final MaterialColor colors;

  Widget build(BuildContext context) {
    var allWidth = MediaQuery.of(context).size.width;
    var allHeight = MediaQuery.of(context).size.width;
    var helloSizedBox = SizedBox(
      width: allWidth / 400,
    );

    var invisableContainer = Container(
      height: allHeight / 3,
      width: allWidth / 3,
    );
    var invisableeSnackContainer = Container(
      height: allHeight / 400,
      width: allWidth / 3,
    );

    var firstHelloContainer = Container(
      height: allHeight/20,
      width: allWidth/1,
    );

    var helloContainer = Container(
      height: allWidth / 10.2,
      width: allHeight / 10.2,
      decoration: new BoxDecoration(
        color: colors.shade800,
        borderRadius: BorderRadius.circular(1),
        border: new Border.all(color: Colors.transparent),
      ),
      child: Material(
        color: colors.shade800,
        borderRadius: BorderRadius.circular(1),
        elevation: 5,
      ),
    );
    return new Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.02),
                blurRadius: allWidth / 10,
              ),
            ]),
        height: allHeight / 1.5,
        width: allWidth / 3.3,
        child: Column(
          
          children: <Widget>[
            firstHelloContainer,
            Row(
              children: <Widget>[
                helloContainer,
                helloSizedBox,
                helloContainer,
                helloSizedBox,
                helloContainer,
              ],
            ),
            invisableeSnackContainer,
            Row(
              children: <Widget>[
                helloContainer,
                helloSizedBox,
                helloContainer,
                helloSizedBox,
                helloContainer,
              ],
            ),
            invisableeSnackContainer,
            Row(
              children: <Widget>[
                helloContainer,
                helloSizedBox,
                helloContainer,
                helloSizedBox,
                helloContainer,
              ],
            ),
            invisableeSnackContainer,
            Row(
              children: <Widget>[
                helloContainer,
                helloSizedBox,
                helloContainer,
                helloSizedBox,
                helloContainer,
              ],
            ),
            invisableeSnackContainer,
            Row(
              children: <Widget>[
                helloContainer,
                helloSizedBox,
                helloContainer,
                helloSizedBox,
                helloContainer,
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

class MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _frontScale;
  Animation<double> _backScale;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _frontScale = new Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.0, 0.5, curve: Curves.easeIn),
    ));
    _backScale = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.5, 1.0, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return new Scaffold(
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.flip_to_back),
        onPressed: () {
          setState(() {
            if (_controller.isCompleted || _controller.velocity > 0)
              _controller.reverse();
            else
              _controller.forward();
          });
        },
      ),
      body: new Center(
        child: new Stack(
          children: <Widget>[
            new AnimatedBuilder(
              child: new MyCustomCard(
                colors: Colors.red,
              ),
              animation: _backScale,
              builder: (BuildContext context, Widget child) {
                final Matrix4 transform = new Matrix4.identity()
                  ..scale(1.0, _backScale.value, 1.0);
                return new Transform(
                  transform: transform,
                  alignment: FractionalOffset.center,
                  child: child,
                );
              },
            ),
            new AnimatedBuilder(
              child: new MyCustomCard(colors: Colors.blue),
              animation: _frontScale,
              builder: (BuildContext context, Widget child) {
                final Matrix4 transform = new Matrix4.identity()
                  ..scale(1.0, _frontScale.value, 1.0);
                return new Transform(
                  transform: transform,
                  alignment: FractionalOffset.center,
                  child: child,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
