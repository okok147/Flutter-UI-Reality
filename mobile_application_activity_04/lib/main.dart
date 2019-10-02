import 'package:flutter/material.dart';

void main() => runApp(TestPage());


class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => new _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String text = "Initial Text";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new Container(child: new DrawerHeader(child: new Container())),
              new Container(
                child: new Column(children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.info),
                      onTap: () {
                        setState(() {
                          text = "info pressed";
                        });
                      }),
                  new ListTile(
                      leading: new Icon(Icons.save),
                      onTap: () {
                        setState(() {
                          text = "save pressed";
                        });
                      }),
                  new ListTile(
                      leading: new Icon(Icons.settings),
                      onTap: () {
                        setState(() {
                          text = "settings pressed";
                        });
                      }),
                ]),
              )
            ],
          ),
        ),
        appBar: new AppBar(
          title: new Text("Test Page"),
        ),
        body: new Center(
          child: new Text((text)),
        ));
  }
}
