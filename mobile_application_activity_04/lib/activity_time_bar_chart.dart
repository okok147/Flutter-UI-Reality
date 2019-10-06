import 'dart:async';
import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mobile_application_activity_03/FadeAnimation.dart';
import 'package:mobile_application_activity_03/utils.dart';

class BarChartSample1 extends StatefulWidget {
  final List<Color> availableColors = [
    Color(0xff3535DD).withOpacity(0.85),
    Colors.redAccent.withOpacity(0.95),
  ];

  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<BarChartSample1> {
  final Color barBackgroundColor = Colors.lightBlueAccent.withOpacity(0.1);
  final Duration animDuration = Duration(milliseconds: 250);

  StreamController<BarTouchResponse> barTouchedResultStreamController;

  int touchedIndex;
  
  bool isPlaying = true;
  

  @override
  void initState() {
    super.initState();
    refreshState();

    barTouchedResultStreamController = StreamController();
    barTouchedResultStreamController.stream
        .distinct()
        .listen((BarTouchResponse response) {
      if (response == null) {
        return;
      }

      if (response.spot == null) {
        setState(() {
          touchedIndex = -1;
        });
        return;
      }

      setState(() {
        if (response.touchInput is FlLongPressEnd) {
          touchedIndex = -1;
        } else {
          touchedIndex = response.spot.touchedBarGroupPosition;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return AspectRatio(
      aspectRatio: 1.3,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        color: Colors.grey.withOpacity(0.02),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FadeAnimation(
                        3,
                        Text(
                          'Activity Time',
                          style: TextStyle(
                            fontFamily: 'Arimo-Italic',
                            fontSize: 18.5,
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            FadeAnimation(
                              4,
                              Text('Details',style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.underline,
                                textBaseline: TextBaseline.alphabetic,
                              ),),
                            ),
                            FadeAnimation(
                              4,
                              InkWell(
                                child: Icon(Icons.chevron_right,color: Colors.grey,),
                                onTap: () {
                                  setState(() {
                                    isPlaying = !isPlaying;
                                    if (isPlaying) {
                                      refreshState();
                                    }
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: FlChart(
                        swapAnimationDuration: animDuration,
                        chart:
                            BarChart(isPlaying ? randomData() : mainBarData()),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.black,
    double width = 7,
  }) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(
        y: isTouched ? y + 1 : y,
        color: isTouched ? Colors.yellow : barColor,
        width: width,
        isRound: true,
        backDrawRodData: BackgroundBarChartRodData(
          show: true,
          y: 25,
          color: barBackgroundColor,
        ),
      ),
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    barTouchedResultStreamController.close();
  }

  List<BarChartGroupData> showingGroups() => List.generate(8, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 5, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 12, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 23, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 10.5, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 18, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 8, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 13.5, isTouched: i == touchedIndex);
          case 7:
            return makeGroupData(7, 2.5, isTouched: i == touchedIndex);
          default:
            return null;
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: TouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItems: (touchedSpots) {
              return touchedSpots.map((touchedSpot) {
                String weekDay;
                switch (touchedSpot.spot.x.toInt()) {
                  case 0:
                    weekDay = 'Monday';
                    break;
                  case 1:
                    weekDay = 'Tuesday';
                    break;
                  case 2:
                    weekDay = 'Wednesday';
                    break;
                  case 3:
                    weekDay = 'Thursday';
                    break;
                  case 4:
                    weekDay = 'Friday';
                    break;
                  case 5:
                    weekDay = 'Saturday';
                    break;
                  case 6:
                    weekDay = 'Sunday';
                    break;
                  case 7:
                    weekDay = 'Oday';
                    break;
                }
                return TooltipItem(
                    weekDay + '\n' + (touchedSpot.spot.y - 1).toString(),
                    TextStyle(color: Colors.yellow));
              }).toList();
            }),
        touchResponseSink: barTouchedResultStreamController.sink,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
            showTitles: true,
            textStyle: barChartTextStyle,
            margin: 16,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return '8AM';
                case 1:
                  return '';
                case 2:
                  return '10AM';
                case 3:
                  return '';
                case 4:
                  return '12AM';
                case 5:
                  return '';
                case 6:
                  return '2PM';
                 case 7:
                  return '';
                

                default:
                  return '';
              }
            }),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: const BarTouchData(
        enabled: true,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
            showTitles: true,
            textStyle: barChartTextStyle,
            margin: 16,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return '8AM';
                case 1:
                  return '';
                case 2:
                  return '10AM';
                case 3:
                  return '';
                case 4:
                  return '12AM';
                case 5:
                  return '';
                case 6:
                  return '2PM';
                case 7:
                  return '';
                default:
                  return '';
              }
            }),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(8, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, Random().nextInt(3).toDouble() + 5,
                barColor:  redBarColor);
          case 1:
            return makeGroupData(1, Random().nextInt(3).toDouble() + 10.5,
               barColor: blueBarColor);
          case 2:
            return makeGroupData(2, Random().nextInt(3).toDouble() + 22,
                barColor: blueBarColor);
          case 3:
            return makeGroupData(3, Random().nextInt(3).toDouble() + 9.5,
                barColor: redBarColor);
          case 4:
            return makeGroupData(4, Random().nextInt(3).toDouble() + 18,
                 barColor: blueBarColor);
          case 5:
            return makeGroupData(5, Random().nextInt(3).toDouble() + 7.5,
                 barColor: redBarColor);
          case 6:
            return makeGroupData(6, Random().nextInt(3).toDouble() + 12.5,
                 barColor: blueBarColor);
          case 7:
            return makeGroupData(7, Random().nextInt(3).toDouble() + 3,
                barColor: redBarColor);
          default:
            return null;
        }
      }),
    );
  }

  Future<dynamic> refreshState() async {
    setState(() {});
    await Future<dynamic>.delayed(animDuration + Duration(milliseconds: 1150));
    if (isPlaying) {
      //to avoid memory leaks,set a condition
      if (mounted) {
        refreshState();
      }

      
      

    }

    
    
  }
}
