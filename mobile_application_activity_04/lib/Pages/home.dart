import 'package:flutter/material.dart';
import 'package:mobile_application_activity_03/main.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Activity'),
      ),
    );
  }
}
