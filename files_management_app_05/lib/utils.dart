import 'package:flutter/material.dart';

var addIcon = Container(
  height: 42,
  width: 42,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25.0),
    border: Border.all(
        width: 1.5,
        color: Colors.grey.withOpacity(0.3),
        style: BorderStyle.solid),
  ),
  child: IconButton(
    icon: Icon(Icons.add),
    iconSize: 20,
    onPressed: () {},
  ),
);

var emailIcon = Padding(
  padding: const EdgeInsets.only(left: 16.0),
  child: Container(
    height: 42,
    width: 42,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      border: Border.all(
          width: 1.5,
          color: Colors.grey.withOpacity(0.3),
          style: BorderStyle.solid),
    ),
    child: IconButton(
      icon: Icon(Icons.email),
      iconSize: 20,
      onPressed: () {},
    ),
  ),
);
