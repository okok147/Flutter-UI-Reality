import 'package:flutter/material.dart';
import 'package:friendly_forest_02/router.dart';
import 'package:friendly_forest_02/utils.dart';
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
      body: AspectRatio(
        aspectRatio: 0.5,
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.7,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/daily_life.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 1.9,
                    child: Center(
                        child: Text('Daily Life',
                            style: new TextStyle(
                              fontSize: 35.0,
                              color: Color(0xffde5e841).withOpacity(0.88),
                            ))),
                  ),
                ],
              ),
            ),
            AspectRatio(
              aspectRatio: 5.8 / 2,
              child: Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 65, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            ' "You have the freedom,ability,and authority ',
                            style: TextStyle(
                              fontSize: 12.5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            ' to love your life.Just be you,then wait. " ',
                            style: TextStyle(
                              fontSize: 12.5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0),
                          child: Text(
                            '~Gangaji',
                            style: TextStyle(
                              fontSize: 12.5,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: AspectRatio(
                  aspectRatio: 6.8,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Container(
                        width: 290.0,
                        height: 80.0,
                        child: RaisedButton(
                          color: Color(0xff2B55A8).withOpacity(0.95),
                          onPressed: () {},
                          child: const Text(
                            'GET STARTED',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.5,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
