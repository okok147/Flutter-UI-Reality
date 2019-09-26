import 'package:flutter/material.dart';
import 'package:mobile_application_activity_03/utils.dart';
import 'package:mobile_application_activity_03/heart_rate_line_chart.dart';
import 'dart:math' as math;
import 'package:mobile_application_activity_03/activity_line_chart.dart';

var heartRateStack = Stack(
  children: <Widget>[
    Positioned(
      top: 24,
      left: 16,
      child: Text(
        'Heart',
        style: activityCardTextStyle,
      ),
    ),
    Positioned(
      top: 48,
      left: 16,
      child: Text(
        'Rate',
        style: activityCardTextStyle,
      ),
    ),
    Positioned(
      top: 8,
      right: 8,
      child: IconButton(
        icon: Icon(
          const IconData(0xe804, fontFamily: 'CustomAppIcon'),
          size: 32,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ),
    Positioned(
      top: 100,
      left: 40,
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(text: '67 ', style: heartRateTextStyle),
          TextSpan(text: ' bpm', style: bpmTextStyle),
        ]),
      ),
    ),
    Positioned(
      child: HeartRateLineChart(),
    ),
  ],
);

var stepStack = Stack(
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
        onPressed: () {
          print(
              ('you clicked the Step and will show info about step with using hero'));
        },
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 32),
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
              padding: const EdgeInsets.only(top: 3.0),
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
);

//custom paint
class StepsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(40, 55, 130, 145);
    final startAngle = -math.pi / 1.9;
    final sweepAngle = math.pi * 1.50;
    final useCenter = false;
    final paint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.5;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(StepsPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(StepsPainter oldDelegate) => false;
}

var activityStack = Stack(
  children: <Widget>[
    Positioned(
      top: 24,
      left: 16,
      child: Text(
        'Activity',
        style: activityCardTextStyle,
      ),
    ),
    Positioned(
      top: 8,
      right: 8,
      child: IconButton(
        icon: Icon(
          const IconData(0xe803, fontFamily: 'CustomAppIcon'),
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ),
    Positioned(
      top: 90,
      left: 45,
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(text: '6 ', style: heartRateTextStyle),
          TextSpan(text: 'h  ', style: bpmTextStyle),
          TextSpan(text: '47 ', style: heartRateTextStyle),
          TextSpan(text: 'm  ', style: bpmTextStyle),
        ]),
      ),
    ),
    Positioned(
      child: ActivityLineChart(),
    ),
    Positioned(
      bottom: 55,
      left: 16,
      child: Text(
        '8AM',
        style: timeTextStyle,
      ),
    ),
    Positioned(
      bottom: 55,
      right: 16,
      child: Text(
        '4PM',
        style: timeTextStyle,
      ),
    ),
  ],
);

var sleepStack = Stack(
  children: <Widget>[
    Positioned(
      top: 24,
      left: 16,
      child: Text(
        'Sleep',
        style: activityCardTextStyle,
      ),
    ),
    Positioned(
      top: 8,
      right: 8,
      child: IconButton(
        icon: Icon(
          const IconData(0xf186, fontFamily: 'CustomAppIcon'),
          size: 32,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ),
    Positioned(
      top: 70,
      left: 45,
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(text: '7 ', style: heartRateTextStyle),
          TextSpan(text: 'h  ', style: bpmTextStyle),
          TextSpan(text: '54 ', style: heartRateTextStyle),
          TextSpan(text: 'm  ', style: bpmTextStyle),
        ]),
      ),
    ),
    Positioned(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 100, 16, 32),
        child: Container(
          color: Colors.transparent,
          height: 90,
          width: 145,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                sleepBarGreyContainer,
                sleepBarWhiteContainer,
                sleepBarDoubleGreyContainer,
                sleepBarTripleWhiteContainer,
                sleepBarGreyContainer,
                sleepBarOneThirdWhiteContainer,
                sleepBarTripleGreyContainer,
                SizedBox(
                  width: 7,
                ),
                sleepBarDoubleGreyContainer,
                sleepBarHalfWhiteContainer,
                sleepBarGreyContainer,
              ],
            ),
          ),
        ),
      ),
    ),
  ],
);
