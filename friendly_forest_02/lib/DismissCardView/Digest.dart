import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:friendly_forest_02/utils.dart';

final digestCardView = ListView(
  // Inside the widget to get index !

  children: <Widget>[
    Dismissible(
      child: Container(
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          color: Color(0xffBADEFF),
        ),
        height: 130,
        child: Row(
          children: <Widget>[
            Container(),
            Column(),
          ],
        ),
      ),
      //right side
      secondaryBackground: Container(
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: digestCardBackgroundColor),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
          child: Icon(
            Icons.cancel,
            color: Colors.white,
          )),
      //left side
      background: blueBackgroundContainer,

      key: ValueKey('1'),
    ),
    SizedBox(
      height: 20,
    ),
  ],
);
