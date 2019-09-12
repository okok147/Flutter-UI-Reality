import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gardener_01/main.dart';
import 'package:gardener_01/utils.dart';
import 'package:gardener_01/notification.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key, this.notification}) : super(key: key);

  final AppNotification notification;

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

  BoxDecoration iconBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        width: 1,
        color: Color(0xffFFA800).withOpacity(1),
      ),
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
              onPressed: () {
                Navigator.pop(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyHomePage()));
              },
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
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5F40D4),
                        ),
                      ),
                    ),
                    onPressed: () {
                      //need to find out how to direct to certain area in current page
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
                    tooltip: 'Fliters',
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
          Padding(
            padding: const EdgeInsets.fromLTRB(28.0, 16.0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Search',
                    style: new TextStyle(
                      fontSize: 40.0,
                      color: Color(0xffFFA800).withOpacity(0.85),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Results',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5F40D4).withOpacity(0.85),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 42, 0, 0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AvailableImages.girl)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 16.0),
                  child: Container(
                    width: 200.0,
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 16.0, left: 0.0),
                            child: Text(
                              'Megan Watkins',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5F40D4).withOpacity(1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                size: 20.0,
                                color: Color(0xffFFA800),
                              ),
                              Text(
                                '2 km',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFA800).withOpacity(1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0),
                                child: Icon(
                                  Icons.access_time,
                                  size: 18.0,
                                  color: Color(0xffFF505C),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '10 -12 am',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFF505C).withOpacity(1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AvailableImages.men)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 16.0),
                  child: Container(
                    width: 200.0,
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 16.0, left: 0.0),
                            child: Text(
                              'Bobby Vargas',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5F40D4).withOpacity(1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                size: 20.0,
                                color: Color(0xffFFA800),
                              ),
                              Text(
                                '2.5 km',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFA800).withOpacity(1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0),
                                child: Icon(
                                  Icons.access_time,
                                  size: 18.0,
                                  color: Color(0xffFF505C),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '12 -03 pm',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFF505C).withOpacity(1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AvailableImages.men)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 16.0),
                  child: Container(
                    width: 200.0,
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 16.0, left: 0.0),
                            child: Text(
                              'Lori Freeman',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5F40D4).withOpacity(1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                size: 20.0,
                                color: Color(0xffFFA800),
                              ),
                              Text(
                                '4 km',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFA800).withOpacity(1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0),
                                child: Icon(
                                  Icons.access_time,
                                  size: 18.0,
                                  color: Color(0xffFF505C),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '03 -06 pm',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFF505C).withOpacity(1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AvailableImages.girl)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 16.0),
                  child: Container(
                    width: 200.0,
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 16.0, left: 0.0),
                            child: Text(
                              'Pamela Holmes',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5F40D4).withOpacity(1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                size: 20.0,
                                color: Color(0xffFFA800),
                              ),
                              Text(
                                '4 km',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFA800).withOpacity(1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0),
                                child: Icon(
                                  Icons.access_time,
                                  size: 18.0,
                                  color: Color(0xffFF505C),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '06 -09 pm',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFF505C).withOpacity(1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
