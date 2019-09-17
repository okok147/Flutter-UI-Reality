import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:friendly_forest_02/utils.dart';

final allCardView = ListView(
  // Inside the widget to get index !

  children: <Widget>[
     Dismissible(
      child: Container(
        height: 135,
        color: allCardBackgroundColor,
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
          color: digestCardBackgroundColor),
      key: ValueKey('3'),
    ),
    
    SizedBox(height: 20,),

    Dismissible(
      child: Container(
        height: 135,
        color: allCardBackgroundColor,
      ),
      background: blueBackgroundContainer,
      secondaryBackground: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
            child: Icon(
              Icons.cancel,
            ),
          ),
          alignment: Alignment.centerRight,
          color: digestCardBackgroundColor),
      key: ValueKey('3'),
    ),
  ],
);
