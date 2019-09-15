import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:friendly_forest_02/router.dart';
import 'package:friendly_forest_02/utils.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart' show SystemChannels;

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
        aspectRatio: 0.52,
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.71,
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
                    aspectRatio: 2.0,
                    child: Center(
                        child: Text('Daily Life',
                            style: new TextStyle(
                              fontSize: 35.0,
                              fontFamily: 'Manjari Bold',
                              color: Color(0xffde5e841).withOpacity(0.85),
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
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                              //define a class for text style to avoid repeat coding
                              ' " You have the freedom , ability , and authority ',
                              style: infoTextStyle),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(
                              ' to love your life . Just be you , then wait. " ',
                              style: infoTextStyle),
                        ),
                        Text(' ~ Gangaji ', style: infoTextStyle),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            AspectRatio(
                aspectRatio: 7.0,
                child: Center(
                  child: Container(
                    width: 280.0,
                    height: 80.0,
                    child: RaisedButton(
                      color: Color(0xff2B55A8).withOpacity(0.95),
                      onPressed: () {
                        Navigator.pushNamed(context, homeViewRoute);
                        SystemChannels.textInput
                            .invokeMethod('TextInput.reload');
                      },
                      child: const Text(
                        'GET STARTED',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.5,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(roundedcorner),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
