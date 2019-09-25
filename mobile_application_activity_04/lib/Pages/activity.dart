import 'package:flutter/material.dart';

import '../utils.dart';
import '../utils.dart';

void main() => runApp(Activity());

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 40, 24, 16),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hello, ',
                      style: helloTextStyle,
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Maggie',
                          style: maggieTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right:0.0),
                  child: Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(
                        const IconData(0xf601, fontFamily: 'CustomAppIcon'),
                        size: 28,
                        color: Colors.blueAccent,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),

            Container(height: 570,
          
            color:Colors.blueAccent),
          ],
        ),
      ),
    );
  }
}
