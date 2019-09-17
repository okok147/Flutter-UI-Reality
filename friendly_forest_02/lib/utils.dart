import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;

    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;

    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

const infoTextStyle = const TextStyle(
  fontSize: 13.5,
  fontWeight: FontWeight.w500,
  color: Color(0xff000000),
  fontFamily: 'Manjari',
);

const tabTextStyle = const TextStyle(
  fontSize: 13.5,
  fontWeight: FontWeight.w200,
  color: Color(0xff000000),
  fontFamily: 'Manjari',
);

const HintTextStyle = const TextStyle(
  fontSize: 15.5,
  fontWeight: FontWeight.w200,
  fontFamily: 'Manjari',
);

const headerTextStyle = const TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w200,
  color: Color(0xff202020),
  fontFamily: 'Manjari',
);

const PreFixTextStyle = const TextStyle(
  fontSize: 13.5,
  fontWeight: FontWeight.w200,
  color: Color(0xff000000),
  fontFamily: 'Manjari',
);
const AllAlign = const EdgeInsets.fromLTRB(16, 16, 16, 16);
const HomePageAlign = const EdgeInsets.only(left: 16.0);

double separateSize = 33.0;
double smallSeparateSize = 15.0;

const roundedcorner = 12.0;

//this is an aliens language for me right now, but I would figure it out later on ^_^
class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}

const SearchIconData = Icon(
  const IconData(0xe800, fontFamily: 'SearchIcon'),
  size: 15.8,
  color: Color(0xff454545),
);

const SearchBarDecoration = const InputDecoration(
  prefixIcon: SearchIconData,
  prefixStyle: PreFixTextStyle,
  border: InputBorder.none,
  hintText: 'Search',
  hintStyle: HintTextStyle,
);

var pageIndex = 1;

var greenBackgroundContainer = Container(
  child: Icon(Icons.check),
  color: Colors.green,
);

var leftBackgroundContainer = Container(
    decoration: new BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Color(0xff245EDB).withOpacity(0.05),
    ),
    alignment: Alignment.centerRight,
    padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
    child: Icon(
      Icons.cancel,
      color: Colors.white,
    ));

var rightBlueBackgroundContainer = Container(
  decoration: new BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    color: Color(0xff4678C6).withOpacity(0.95),
  ),
  alignment: Alignment.centerRight,
  padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
  child: Icon(
    Icons.cancel,
    color: Colors.white,
  ),
);

var blueDismissable = Dismissible(
  child: Container(
    height: 130,
    width: 500,
    child: Container(
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
        color: Color(0xffBADEFF).withOpacity(0.9),
      ),
      padding: EdgeInsets.fromLTRB(30, 30, 20, 30),
      child: Row(
        children: <Widget>[
          Text('This is a bird'),
          Spacer(),
          Container(
            color: Colors.redAccent,
            height: 120,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Birds'),
                SizedBox(
                  height: 5,
                ),
                Text('Vulnerable to extinction due to'
                    ' habitat loss & hunting')
              ],
            ),
          ),
        ],
      ),
    ),
  ),

  //left side
  background: leftBackgroundContainer,
  //right side
  secondaryBackground: rightBlueBackgroundContainer,

  key: ValueKey('1'),
);

var allCardBackgroundColor = Color(0xffEBAD53).withOpacity(0.5);
var digestCardBackgroundColor = Colors.blueAccent.withOpacity(0.99);
var newsCardBackgroundColor = Colors.greenAccent.withOpacity(0.8);
var contactCardBackgroundColor = Colors.purpleAccent.withOpacity(0.8);
