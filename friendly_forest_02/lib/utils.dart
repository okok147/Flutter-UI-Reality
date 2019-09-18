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

const cardContextTextStyle = const TextStyle(
  fontSize: 14.5,
  fontWeight: FontWeight.w400,
  color: Color(0xff767474),
  fontFamily: 'Manjari',
);

const cardTextStyle = const TextStyle(
  fontSize: 17.5,
  fontWeight: FontWeight.w300,
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
  color: Color(0xFF000000),
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

var roundedBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
  color: digestCardContextBackgroundColor,
);

var allRoundedBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
  color: allCardBackgroundColor,
);

var othersRoundedBoxDecoration = BoxDecoration(
 borderRadius: BorderRadius.all(Radius.circular(10)),
  color: Colors.orangeAccent.withOpacity(0.31),
);

var roundedCardDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  color: Color(0xff562139).withOpacity(0.95),
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

var digestDismissable = Dismissible(
  child: Container(
    height: 130,
    child: Container(
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
        color: digestCardContextBackgroundColor,
      ),
      padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
      
      child: Row(
        children: <Widget>[
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/peacock.png'))),
          ),

          SizedBox(width: 5,),
        
          Container(
            height: 120,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Text(
                    'Birds',
                    style: cardTextStyle,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Vulnerable to extinction due ',
                  style: cardContextTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'to habitat loss & hunting',
                  style: cardContextTextStyle,
                )
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

var allDismissable = Dismissible(
  child: Container(
    height: 130,
    child: Container(
      
      decoration: allRoundedBoxDecoration,
      padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
      child: Row(
        children: <Widget>[
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/cartoon_bird.png'))),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 120,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Text(
                    'Wolf',
                    style: cardTextStyle,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Vulnerable to extinction due ',
                  style: cardContextTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'to habitat loss & hunting',
                  style: cardContextTextStyle,
                )
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

var allCardBackgroundColor = Colors.redAccent.withOpacity(0.5);
var digestCardBackgroundColor = Colors.blueAccent.withOpacity(0.9);
var newsCardBackgroundColor = Colors.greenAccent.withOpacity(0.8);
var contactCardBackgroundColor = Colors.purpleAccent.withOpacity(0.8);
var digestCardContextBackgroundColor = Color(0xffBADEFF).withOpacity(0.5);

var othersCard = Padding(
  padding: const EdgeInsets.fromLTRB(0,0,0,0),
  child: Container(
    height: 80,
    width: 80,
    decoration: roundedCardDecoration,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
        
          
          decoration: BoxDecoration(
            
            image: DecorationImage(
              fit: BoxFit.cover,
              
              image: AssetImage('assets/cartoon_bird.png'),
              

            ),
          ),
        ),
      ),
    ),
  ),
);
