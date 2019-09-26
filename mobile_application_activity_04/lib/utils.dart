import 'package:flutter/material.dart';
import 'package:mobile_application_activity_03/activityCardStack.dart';

var bottomActiveColor = Color(0xff84C9F9).withOpacity(0.8);
var bottomUnactiveColor = Colors.black.withOpacity(1);

var normalTextStyle =
    TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 14.5);
var bpmTextStyle =
    TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 14.5);
var heartRateTextStyle =
    TextStyle(color: Colors.white.withOpacity(0.85), fontSize: 23.5);

var helloTextStyle = TextStyle(
    color: Colors.black87.withOpacity(0.5),
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
  color: Color(0xff35C8DD).withOpacity(0.75),
);

var activityTextStyle =
    TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600);

var activityNumberTextStyle =
    TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300);
var timeTextStyle = TextStyle(
    color: Colors.white.withOpacity(0.9),
    fontSize: 11.5,
    fontWeight: FontWeight.w400);

var stepContainer = Container(
  decoration: activityStepCardDecoation,
  height: 220,
  width: 170,
  child: stepStack,
);

var heartRateContainer = Container(
  decoration: activityHeartRateCardDecoation,
  height: 300,
  width: 170,
  child: heartRateStack,
);

var activityContainer = Container(
  decoration: activityActivityCardDecoation,
  height: 300,
  width: 170,
  child: activityStack,
);

var sleepContainer = Container(
  decoration: activitySleepCardDecoation,
  height: 220,
  width: 170,
);
