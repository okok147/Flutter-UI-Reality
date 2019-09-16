import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:friendly_forest_02/utils.dart';

final NewsCardView = ListView(
  // Inside the widget to get index !

  children: <Widget>[
    Container(height: 100, color: NewsCardBackgroundColor),
    SizedBox(
      height: 30,
    ),
    Dismissible(
      child: Container(
        height: 70,
        color: NewsCardBackgroundColor,
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
          color: NewsCardBackgroundColor),
      key: ValueKey('3'),
    ),
  ],
);
