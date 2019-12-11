import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp(
    items: new List<String>.generate(10000, (i) => '$i'),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(24),
              child: new Container(
                  height: 200,
                  color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Text('${items[index]}'),
                      _buildRow(context, 'hello world!'),
                      _buildRow(context, 'greeting')
                    ],
                  )),
            );
          },
        ),
      ),
    );
  }
}

Widget _buildRow(BuildContext context, String greeting) {
  return Container(
    child: Text(
      greeting,
      style: TextStyle(color: Colors.white),
    ),
  );
}
