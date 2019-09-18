import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:friendly_forest_02/DismissCardView/All.dart';
import 'package:friendly_forest_02/DismissCardView/Digest.dart';
import 'package:friendly_forest_02/DismissCardView/News.dart';
import 'package:friendly_forest_02/DismissCardView/Contact.dart';
import 'package:friendly_forest_02/router.dart';
import 'package:friendly_forest_02/utils.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    new Tab(
      text: 'All',
    ),
    new Tab(
      text: 'Digest',
    ),
    new Tab(
      text: 'News',
    ),
    new Tab(
      text: 'Contact',
    ),
  ];

  TabController _tabController;

  String value = "";

  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var tabPageIndex = _tabController.index;
    print(tabPageIndex);

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
                  height: smallSeparateSize,
                ),
                Padding(
                  padding: HomePageAlign,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '\nCharity Campaign',
                      //$ can get data and use it !
                      style: headerTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                          controller: _textEditingController,
                          onSubmitted: (text) {
                            value = text;

                            //_textEditingController.addListener(() {
                            //it adds value to listener when doing certain action
                            // });

                            print(_textEditingController.text);

                            //yeah,get the index of page successfully!

                            print('$pageIndex');
                            _textEditingController.text = "";

                            //Do something
                          },
                          textInputAction: TextInputAction.search,
                          decoration: SearchBarDecoration),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    DefaultTabController(
                      length: 4,
                      child: TabBar(
                        controller: _tabController,
                        labelStyle: tabTextStyle,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator:
                            CircleTabIndicator(color: Colors.black, radius: 2),
                        isScrollable: true,
                        labelColor: Colors.black,
                        tabs: myTabs,
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
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: AllAlign,
                  child: Container(
                    height: 300,
                    child: Center(
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          allCardView,
                          digestCardView,
                          newsCardView,
                          contactCardView,
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Row(
                    children: <Widget>[
                      othersCard,
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Container(
                          height: 55,
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Others',
                                style: cardTextStyle,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Rare mushrooms',
                                style: cardContextTextStyle,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 2,
                                width: 77,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      stops: [
                                        0.1
                                      ],
                                      colors: [
                                        Colors.orange[600],
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: othersRoundedBoxDecoration,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 3.0),
                          child: Icon(
                            Icons.pie_chart_outlined,
                            color: Colors.orangeAccent,
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                  child: Container(
                    height: 75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        facebookCard,
                        twitterCard,
                        githubCard,
                        Container(),
                        Container(),
                        Container(
                          height: 55,
                          width: 190,
                          child: Padding(
                            padding: const EdgeInsets.only(right:24.0),
                            child: RaisedButton(
                              color: Colors.orange.withOpacity(1),
                              onPressed: () {
                                Navigator.pushNamed(context, homeViewRoute);
                              },
                              child: const Text(
                                'DONATE NOW',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.5,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    roundedcorner //replace with 12 is available
                                    ),
                              ),
                              // the end of the button
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
