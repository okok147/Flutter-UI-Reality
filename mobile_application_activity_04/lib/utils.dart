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
  color: Colors.black87.withOpacity(0.55),
  fontSize: 22.5,
  fontWeight: FontWeight.w300,
  fontFamily: 'Cabin',
);

var maggieTextStyle = TextStyle(
    color: Colors.black.withOpacity(0.9),
    fontSize: 28.5,
    fontWeight: FontWeight.w600);

var activityCardTextStyle =
    TextStyle(color: Colors.white.withOpacity(1), fontSize: 18.5);

var activityStepCardDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Color(0xff3535DD).withOpacity(0.85),
);

var activityHeartRateCardDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.redAccent.withOpacity(0.95),
);

var activityActivityCardDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.amber.withOpacity(0.9),
);

var activitySleepCardDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Color(0xff35C8DD).withOpacity(0.85),
);

var sleepChart03Decoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(3.5),
    topRight: Radius.circular(3.5),
  ),
  color: Colors.white.withOpacity(0.3),
);

var sleepChart1Decoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(3.5),
    topRight: Radius.circular(3.5),
  ),
  color: Colors.white.withOpacity(1),
);

var stepTextStyle = TextStyle(
  color: Colors.white.withOpacity(0.95),
  fontSize: 25.5,
  fontWeight: FontWeight.w100,
);

var activityTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

var activityNumberTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 25,
  fontWeight: FontWeight.w300,
);

var timeTextStyle = TextStyle(
    color: Colors.white.withOpacity(0.9),
    fontSize: 11.5,
    fontWeight: FontWeight.w400);

var heartRateContainer = Container(
  decoration: activityHeartRateCardDecoration,
  height: 300,
  width: 174,
  child: heartRateStack,
);

var activityContainer = Container(
  decoration: activityActivityCardDecoration,
  height: 300,
  width: 174,
  child: activityStack,
);

var sleepContainer = Container(
  decoration: activitySleepCardDecoration,
  height: 220,
  width: 174,
  child: sleepStack,
);

var sleepBarGreyContainer = Container(
  height: 60,
  width: 10,
  decoration: sleepChart03Decoration,
);

var sleepBarDoubleGreyContainer = Container(
  height: 60,
  width: 20,
  decoration: sleepChart03Decoration,
);

var sleepBarTripleGreyContainer = Container(
  height: 60,
  width: 30,
  decoration: sleepChart03Decoration,
);

var sleepBarWhiteContainer = Container(
  height: 65,
  width: 6,
  decoration: sleepChart1Decoration,
);

var sleepBarTripleWhiteContainer = Container(
  height: 65,
  width: 18,
  decoration: sleepChart1Decoration,
);

var sleepBarOneThirdWhiteContainer = Container(
  height: 65,
  width: 2,
  decoration: sleepChart1Decoration,
);

var sleepBarHalfWhiteContainer = Container(
  height: 65,
  width: 3,
  decoration: sleepChart1Decoration,
);

var switchColor = [
  Colors.white,
  Color(0xff3535DD).withOpacity(0.85),
];
