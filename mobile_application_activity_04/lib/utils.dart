import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:mobile_application_activity_03/heart_rate_line_chart.dart';

var bottomActiveColor = Color(0xff84C9F9).withOpacity(0.8);
var bottomUnactiveColor = Colors.black.withOpacity(1);

var normalTextStyle =
    TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 14.5);
var bpmTextStyle =
    TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 14.5);
var heartRateTextStyle =
    TextStyle(color: Colors.white.withOpacity(0.85), fontSize: 23.5);

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
  color: Color(0xff35C8DD).withOpacity(0.75),
);

var activityTextStyle =
    TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600);

var activityNumberTextStyle =
    TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300);

var stepContainer = Container(
  decoration: activityStepCardDecoation,
  height: 220,
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
  ),
);

var heartRateContainer = Container(
  decoration: activityHeartRateCardDecoation,
  height: 300,
  width: 170,
  child: Stack(
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
          )),
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
  ),
);

var activityContainer = Container(
  decoration: activityActivityCardDecoation,
  height: 300,
  width: 170,
);

var sleepContainer = Container(
  decoration: activitySleepCardDecoation,
  height: 220,
  width: 170,
);

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
