import 'package:flutter/material.dart';

var bottomActiveColor = Color(0xff84C9F9).withOpacity(0.8);
var bottomUnactiveColor = Colors.black.withOpacity(1);

var normalTextStyle = TextStyle(color: Colors.grey, fontSize: 14.5);

var helloTextStyle = TextStyle(
    color: Colors.black87.withOpacity(0.8),
    fontSize: 22.5,
    fontWeight: FontWeight.w300);
var maggieTextStyle = TextStyle(
    color: Colors.black.withOpacity(1),
    fontSize: 28.5,
    fontWeight: FontWeight.w600);

var activityStepCardDecoation = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Color(0xff3535DD).withOpacity(0.85),
);

var activityHeartRateCardDecoation = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.redAccent.withOpacity(0.95),
);

var activityActivityCardDecoation = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.amber.withOpacity(0.9),
);

var activitySleepCardDecoation = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Color(0xff35C8DD),
);

var activityTextStyle =
    TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600);

var stepContainer = Container(
  decoration: activityStepCardDecoation,
  height: 210,
  width: 170,
  child: Stack(
    children: <Widget>[
      Positioned(
        top: 24,
        left: 16,
        child: Text(
          'Steps',
          style: activityTextStyle,
        ),
      ),
      Positioned(
        top: 24,
        right: 16,
        child: IconButton(
          icon: Icon(
            const IconData(0xf601, fontFamily: 'CustomAppIcon'),
            size: 28,
            color: Colors.blueAccent,
          ),
          onPressed: () {},
        ),
      ),
    ],
  ),
);

var heartRateContainer = Container(
  decoration: activityHeartRateCardDecoation,
  height: 300,
  width: 170,
);

var activityContainer = Container(
  decoration: activityActivityCardDecoation,
  height: 300,
  width: 170,
);

var sleepContainer = Container(
  decoration: activitySleepCardDecoation,
  height: 210,
  width: 170,
);
