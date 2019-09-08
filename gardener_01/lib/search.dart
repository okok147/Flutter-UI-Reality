import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:gardener_01/main.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        width: 1,
        color: Color(0xff5F40D4).withOpacity(0.19),
      ),
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              alignment: Alignment.bottomLeft,
              icon: Icon(
                Icons.chevron_left,
                size: 30.0,
                color: Color(0xff5F40D4),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 28),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: myBoxDecoration(),
                  height: 62.0,
                  width: 250.0,
                  child: MaterialButton(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Text(
                        'Gardeners around me',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5F40D4),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new SearchPage()));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: IconButton(
                    color: Color(0xffFFA800),
                    icon: Icon(
                      FontAwesomeIcons.slidersH,
                      size: 18.0,
                    ),
                    tooltip: 'what is that ? ',
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Container(
                      child: Text(
                    'Fliters',
                    style: TextStyle(color: Color(0xffFFA800)),
                  )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
