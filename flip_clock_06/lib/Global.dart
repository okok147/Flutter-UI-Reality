import 'package:flip_clock_06/flip_card.dart';
import 'package:flutter/material.dart';

var clipCardComponent = FlipCard(
  direction: FlipDirection.VERTICAL,
  front: Container(
    height: 250,
    width: 250,
    color: Colors.yellow,
  ),
  back: Container(
    height: 250,
    width: 250,
    color: Colors.black,
  ),
);
