import 'package:flutter/material.dart';

var navBarFontSize = 18.0;

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var navBarSpacing =
        SizedBox(width: MediaQuery.of(context).size.width * 0.15);
    var navBarSmallSpacing =
        SizedBox(width: MediaQuery.of(context).size.width * 0.05);

    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              navBarSpacing,
              _NavBarItem('Episodes'),
              navBarSpacing,
              _NavBarItem('About'),
              navBarSmallSpacing,
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: navBarFontSize),
    );
  }
}
