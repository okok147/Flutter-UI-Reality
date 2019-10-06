import 'package:flutter/material.dart';
import 'package:mobile_application_activity_03/utils.dart';
import 'package:mobile_application_activity_03/activityCardStack.dart';
import 'package:mobile_application_activity_03/FadeAnimation.dart';
import 'package:mobile_application_activity_03/activity_time_bar_chart.dart';

class Activity extends StatefulWidget {
  Activity({Key key}) : super(key: key);

  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 36, 16, 16),
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                          1,
                          Text(
                            'Hello, ',
                            style: helloTextStyle,
                          ),
                        ),
                        SizedBox(
                          height: 1.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FadeAnimation(
                              3,
                              Text(
                                'Maggie',
                                style: maggieTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: FadeAnimation(
                        4,
                        Container(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(
                              const IconData(0xf601,
                                  fontFamily: 'CustomAppIcon'),
                              size: 28,
                              color: Colors.lightBlue,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 8, 12),
                  child: Container(
                    height: 600,
                    color: Colors.blueAccent.withOpacity(0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //search it in utils.dart
                            FadeAnimation(
                              5,
                              Container(
                                decoration: activityStepCardDecoration,
                                height: 220,
                                width: 174,
                                //in activityCardStack.dart
                                child: Container(
                                  child: InkWell(
                                    onTap: () {
                                      //navigate to another page
                                      if (_pageController.hasClients) {
                                        _pageController.animateToPage(
                                          1,
                                          duration:
                                              const Duration(milliseconds: 400),
                                          curve: Curves.easeInCubic,
                                        );
                                      }
                                    },
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 24,
                                          left: 16,
                                          child: Text(
                                            'Steps',
                                            style: activityCardTextStyle,
                                          ),
                                        ),
                                        Positioned(
                                          top: 8,
                                          right: 8,
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.directions_walk,
                                              size: 32,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 32),
                                          child: Center(
                                            child: Container(
                                              color: Colors.transparent,
                                              height: 200,
                                              width: 200,
                                              child: CustomPaint(
                                                painter: StepsPainter(),
                                                size: Size(200, 200),
                                                child: Center(
                                                    child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 3.0),
                                                  child: Text(
                                                    '7 537',
                                                    style: stepTextStyle,
                                                  ),
                                                )),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            //utils.dart
                            FadeAnimation(
                              7,
                              heartRateContainer,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FadeAnimation(
                              6,
                              activityContainer,
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            FadeAnimation(
                              8,
                              sleepContainer,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //another page
          Scaffold(
            backgroundColor: Colors.grey.withOpacity(0.03),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 16),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        8,
                        IconButton(
                          icon: Icon(Icons.chevron_left),
                          iconSize: 25,
                          onPressed: () {
                            //navigate to another page
                            if (_pageController.hasClients) {
                              _pageController.animateToPage(
                                0,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeOutCubic,
                              );
                            }
                          },
                          color: Colors.black.withOpacity(0.9),
                        ),
                      ),
                      FadeAnimation(
                        8,
                        Text(
                          'Back',
                          style: TextStyle(fontSize: 17, fontFamily: 'Arimo'),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 12, 32, 16),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 50,
                          child: CustomPaint(
                            painter: StepDetailsPainter(),
                            size: Size(200, 200),
                          ),
                        ),
                        Container(
                          color: Colors.redAccent.withOpacity(0.0),
                          height: 250,
                          child: Center(
                            child: Container(
                              height: 200,
                              child: Material(
                                color: Colors.white,
                                elevation: 15,
                                shadowColor:
                                    Color(0xff3535DD).withOpacity(0.35),
                                child: Container(),
                                shape: CircleBorder(),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 85,
                            left: 110,
                            child: FadeAnimation(
                              1,
                              Text(
                                '7 537',
                                style: TextStyle(
                                    fontSize: 43,
                                    fontFamily: 'Arimo',
                                    fontWeight: FontWeight.w300),
                              ),
                            )),
                        Positioned(
                            top: 150,
                            left: 125,
                            child: FadeAnimation(
                              2,
                              Text(
                                '10 000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Arimo',
                                  color: Colors.grey.withOpacity(0.9),
                                  fontSize: 22,
                                ),
                              ),
                            )),
                        Positioned(
                          top: 152,
                          left: 125,
                          child: Text('7 537', style: stepTextStyle),
                        ),
                      ],
                    ),
                  ),
                  FadeAnimation(
                    3,
                    BarChartSample1(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 16, 16),
                    child: FadeAnimation(
                      4.5,
                      Text(
                        'Statistic',
                        style: TextStyle(
                          fontFamily: 'Arimo',
                          fontWeight: FontWeight.w500,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      FadeAnimation(
                        6,
                        Padding(
                          padding: const EdgeInsets.fromLTRB(32, 5, 16, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 42,
                              width: 42,
                              color: Colors.blue.withOpacity(0.095),
                              child: Center(
                                child: Icon(
                                  const IconData(0xe805,
                                      fontFamily: 'CustomAppIcon'),
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      FadeAnimation(
                        7,
                        Text(
                          '145 ccal burned',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w100,
                            color: Colors.black.withOpacity(0.75),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
