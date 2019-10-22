import 'package:flutter/material.dart';

class AppTextStyles {
  static const headerTextStyle = const TextStyle(
      fontSize: 32.0, fontWeight: FontWeight.w800, color: Colors.blueAccent);

  static const subHeaderTextStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
  );

  static const descriptionTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );

  static const unselectedTabTextStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.5,
    color: Color(0xff261738),
  );

  static const selectedTabTextStyle = const TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14.5, color: Colors.white);
}
