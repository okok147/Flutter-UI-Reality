import 'package:flutter/material.dart';

import 'router.dart' as router;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '123',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      initialRoute: router.infoViewRoute,
    );
  }
}
