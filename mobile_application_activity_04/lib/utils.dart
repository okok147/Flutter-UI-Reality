import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:mobile_application_activity_03/Pages/home.dart';
import 'package:mobile_application_activity_03/Pages/profile.dart';
import 'package:mobile_application_activity_03/Pages/challenges.dart';
import 'package:mobile_application_activity_03/Pages/settings.dart';
import 'package:mobile_application_activity_03/utils.dart';

var bottomActiveColor = Color(0xff84C9F9).withOpacity(1);
var bottomUnactiveColor = Colors.black.withOpacity(1);

 final _pageOption = [
    HomePage(),
    Profile(),
    Challenges(),
    Profile(),
  ];

