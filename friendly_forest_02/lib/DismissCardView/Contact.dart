import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:friendly_forest_02/utils.dart';

final contactCardView = ListView(
  // Inside the widget to get index !

  children: <Widget>[
    Container(
      height: 100,
      color: contactCardBackgroundColor,
    ),
    SizedBox(
      height: 30,
    ),
    Dismissible(
      child: Container(
        height: 70,
        color: contactCardBackgroundColor,
      ),
      background: greenBackgroundContainer,
      secondaryBackground: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
          child: Icon(
            Icons.cancel,
          ),
        ),
        alignment: Alignment.centerRight,
        color: contactCardBackgroundColor,
      ),
      key: ValueKey('3'),
    ),
  ],
);
