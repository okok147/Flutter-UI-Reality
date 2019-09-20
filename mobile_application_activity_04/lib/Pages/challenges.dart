import 'package:flutter/material.dart';

void main() => runApp(Challenges());

class Challenges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(child: Text('Challenges')),
    );
  }
}