// import 'package:flutter/foundation.dart';
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
    final title = 'Schedule';
     

    return new MaterialApp(
      title: title,
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: _buildRow(context, 'greeting')),
    );
  }
}

Widget _buildRow(BuildContext context, String greeting) {
  var clicked = false;
 

  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        height: 191,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 72,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/scheduleMap.png'),
                      fit: BoxFit.fitWidth)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Mong Kong',
                          style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              color: Colors.white,
                              fontSize: 24),
                        ),
                        Text(
                          'Hong Kong',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/dot_to_bus.png',
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Sai wan ho',
                          style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              color: Colors.white,
                              fontSize: 24),
                        ),
                        Text(
                          'Hong Kong',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 119,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dep',
                              style: TextStyle(
                                fontFamily: 'Helvetica Neue',
                                fontWeight: FontWeight.w200,
                                color: Color(0xff727272),
                              ),
                            ),
                            Text(
                              'AM 10:00',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontFamily: 'Helvetica Neue',
                                color: Color(0xff404040),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Image.asset('assets/right_arrow.png')),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dep',
                              style: TextStyle(
                                fontFamily: 'Helvetica Neue',
                                fontWeight: FontWeight.w200,
                                color: Color(0xff727272),
                              ),
                            ),
                            Text(
                              'PM 22:00',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontFamily: 'Helvetica Neue',
                                color: Color(0xff404040),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: clicked
                            ? Text('data')
                            : RichText(
                                text: TextSpan(
                                  text: 'HK\$ 24 ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff23BE8C),
                                      fontSize: 16.0),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'One Ticket',
                                      style: TextStyle(
                                          color: Color(0xff23BE8C),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12.0),
                                    ),
                                  ],
                                ),
                              ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 23),
                        child: InkWell(
                          splashColor: Colors.blueAccent,
                          child: Image.asset('assets/down_array.png'),
                          onTap: () {
                            clicked = !clicked;
                            print(clicked);
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
