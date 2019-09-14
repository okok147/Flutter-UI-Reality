import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:friendly_forest_02/router.dart';
import 'package:friendly_forest_02/utils.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AllAlign,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        size: 37,
                      ),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, infoViewRoute);
                      },
                    ),
                    Spacer(),
                    IconButton(
                      icon: new Icon(
                        const IconData(0xe900, fontFamily: 'Menu Dot'),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeBoxSize,
                ),
                Padding(
                  padding: HomePageAlign,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Charity Campaign',
                      style: headerTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeBoxSize,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        DefaultTabController(
                          initialIndex: 1,
                          length: 4,
                          child: TabBar(
                            labelStyle: tabTextStyle,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: CircleTabIndicator(
                                color: Colors.black, radius: 4),
                            isScrollable: true,
                            labelColor: Colors.black,
                            tabs: <Widget>[
                              Tab(
                                text: 'All',
                              ),
                              Tab(
                                text: 'Digest',
                              ),
                              Tab(
                                text: 'News',
                              ),
                              Tab(
                                text: 'Contact',
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: new Icon(
                            Icons.tune,
                            size: 20.0,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
