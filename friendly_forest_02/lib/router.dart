import 'package:flutter/material.dart';
import 'views/home.dart';
import 'views/info.dart';

const String homeViewRoute = '/';
const String infoViewRoute = '/info';

Route<dynamic> generateRoute(RouteSettings settings) {

  switch(settings.name) {
    case homeViewRoute:
      return MaterialPageRoute(builder: (_) => HomePage());



    case infoViewRoute:
      return MaterialPageRoute(builder: (_) => InfoPage());

      break;

    default:

      return MaterialPageRoute(builder: (_) => InfoPage());



  }


}

