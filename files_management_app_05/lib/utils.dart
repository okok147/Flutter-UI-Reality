import 'package:flutter/material.dart';

/*  

How to change the layout ?

: use Wrap for changing the view of item,when onclick,change the size of item,
  so that Wrap can help to adjust the position of item instead of exceed the layout.


How to build ListView with JSON?

: use ListView.builder,and with JSON file.Figure out how to use it.

Good example: 
  https://youtu.be/_10i7_xsthM?t=768
  
  (Not a JSON,but show how to handle with data and build item)

How can I inspect the widget?

: if in VSCODE,use 'command + click' to look through the code!

 */

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

var searchBarDecoration = InputDecoration(
  border: InputBorder.none,
  hintText: 'Search a files',
  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
  hintStyle: TextStyle(color: Colors.black.withOpacity(0.95)),
  suffixIcon: Icon(Icons.search),
);
