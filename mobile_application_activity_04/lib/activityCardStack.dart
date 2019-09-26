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
        style: activityTextStyle,
      ),
    ),
    Positioned(
      top: 48,
      left: 16,
      child: Text(
        'Rate',
        style: activityTextStyle,
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
        style: activityTextStyle,
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
                style: activityNumberTextStyle,
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
        style: activityTextStyle,
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
