import 'package:flutter/material.dart';
import 'dart:async';

void main()=> runApp(AnimatedFlutterLogo());


class AnimatedFlutterLogo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _AnimatedFlutterLogoState();
}

class _AnimatedFlutterLogoState extends State<AnimatedFlutterLogo> {
  Timer _timer;
  FlutterLogoStyle _logoStyle = FlutterLogoStyle.markOnly;

  _AnimatedFlutterLogoState() {
    _timer = new Timer(const Duration(milliseconds: 400), () {
      setState(() {
        _logoStyle = FlutterLogoStyle.horizontal;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return new FlutterLogo(
      size: 200.0,
      textColor: Colors.white,
      style: _logoStyle,
    );
  }
}