// import 'package:flutter/foundation.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:listview_builder_01/bzWidget.dart';
import 'package:listview_builder_01/ticketRecord.dart';

const mainColor = Color(0xffDF7145);
const normalSpeed = 150;
void main() {
  //change iniital App from PassengerList to TicketRecord
  runApp(new PassengerList(
      // items: new List<String>.generate(10000, (i) => '$i'),

      ));
}

class PassengerList extends StatelessWidget {
  final List<String> items;

  PassengerList({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = '乘客清單';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: AppBar(
              backgroundColor: Color(0xff040C5E).withOpacity(0.78),
              title: new Text(title),
            ),
          ),
          body: ListView(
            children: <Widget>[
              SizedBox(
                height: 24,
              ),
              TicketCard(
                count: 3,
               
              ),
              TicketCard(
                count: 3,boarded1:true,
            
              ),
            ],
          )),
    );
  }
}

class FlipAnimate extends StatefulWidget {
  final bool opened;
  final Widget child;
  final int index;
  final int count;
  final animationController;

  const FlipAnimate(
      {Key key,
      this.child,
      this.opened,
      this.index,
      this.animationController,
      this.count})
      : super(key: key);
  @override
  _FlipAnimateState createState() => _FlipAnimateState();
}

class _FlipAnimateState extends State<FlipAnimate>
    with SingleTickerProviderStateMixin {
  Animation animation;
//  AnimationController animationController;

  bool opened;

  _FlipAnimateState();
  @override
  void initState() {
    //animationController = AnimationController(duration: const Duration(milliseconds: normalSpeed), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Interval(
        (widget.index) / (widget.count + 1),
        (widget.index + 1) / (widget.count + 1),
        curve: Curves.ease,
      ),
    ))
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (animation.value == 0.0) {
      return SizedBox();
    }
    if ((widget.index) == 0) {
      return widget.child;
    }
    return Transform(
        alignment: Alignment.topCenter,
        transform: Matrix4.identity()
          ..setEntry(3, 2, -0.001)
          ..rotateX(3.14 / 2 * (1 - animation.value)),
        child: widget.child);
  }
}

class SingleCard2 extends StatefulWidget {
  final bool opened;

  const SingleCard2({Key key, this.opened}) : super(key: key);
  @override
  _SingleCard2State createState() => _SingleCard2State();
}

class _SingleCard2State extends State<SingleCard2>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  bool opened;

  @override
  void initState() {
    // TODO: implement initState
    opened = widget.opened;
    animationController = AnimationController(
        duration: Duration(milliseconds: (normalSpeed)), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.ease))
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (opened != widget.opened) {
      opened = widget.opened;
      if (opened) {
        animationController.duration =
            Duration(milliseconds: ((normalSpeed) * 1.0).toInt());
        animationController.forward();
      } else {
        animationController.duration =
            Duration(milliseconds: ((normalSpeed) * 2.0).toInt());
        animationController.reverse();
      }
    }

    return Transform(
      alignment: Alignment.bottomCenter,
      transform: Matrix4.identity()
        ..setEntry(3, 2, -0.001)
        ..rotateX(3.14 / 2 * (animation.value)),
      //this
      child: PassengerListItem(
        boarded: true,
      ),
    );
  }
}

class PassengerListItem extends StatelessWidget {
  const PassengerListItem({Key key, @required this.boarded,}) : super(key: key);

  final boarded;

  get boarded1 => true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      height: 119.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '座位： A1 - 2',
                        style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontWeight: FontWeight.w300,
                            color: Color(0xff727272),
                            fontSize: 15.0),
                      ),
                      Text(
                        'Parker Yu',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Helvetica Neue',
                          color: Color(0xff404040),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Container(
                      child: boarded1
                          ? Text(
                              '已登車',
                              style: TextStyle(
                                  color: Color(0xffEF9C70), fontSize: 22.0),
                            )
                          : Text(
                              '未登車',
                              style: TextStyle(
                                  color: Color(0xffA1A6AA), fontSize: 22.0),
                            )),
                ),
              ],
            ),
          ),
          // Divider()
        ],
      ),
    );
  }
}

class SingleCard extends StatefulWidget {
  const SingleCard({Key key}) : super(key: key);
  @override
  _SingleCardState createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  get boarded => true;
  get boarded1 => false;

  @override
  Widget build(BuildContext context) {
    return buildCard(context);
  }

  Container buildCard(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        horizontal: 32.0,
      ),
      height: itemHeight,
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 1.0, color: Color(0xFF666666).withOpacity(.12)))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '座位： A1 - 2',
                        style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontWeight: FontWeight.w300,
                            color: Color(0xff727272),
                            fontSize: 15.0),
                      ),
                      Text(
                        'Parker Yu',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Helvetica Neue',
                          color: Color(0xff404040),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Container(
                      //borded1 controll the item of expanded color
                      child: boarded1
                          ? Text(
                              '已登車',
                              style: TextStyle(
                                  color: Color(0xffEF9C70), fontSize: 22.0),
                            )
                          : Text(
                              '未登車',
                              style: TextStyle(
                                  color: Color(0xffA1A6AA), fontSize: 22.0),
                            )),
                ),
              ],
            ),
            // Divider()
          ],
        ),
      ),
    );
  }
}

class TicketCard extends StatefulWidget {
  final int count;

  const TicketCard({Key key, this.count, bool boarded,bool boarded1}) : super(key: key);
  @override
  _TicketCardState createState() => _TicketCardState();
}

const itemHeight = 96.0;
const topItemHeight = 85.0;

class _TicketCardState extends State<TicketCard> {
  var opened = false;
  

  Widget _buildRow(BuildContext context, String greeting) {
    return InkWell(
      onTap: () {
        opened = !opened;
        setState(() {});
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: normalSpeed * 3),
          height: opened ? (itemHeight * widget.count + 72.0) : 191,
          child: Container(
            // height: 191.0,
            child: Material(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  // decoration: BoxDecoration(
                  //   color: Colors.white,
                  //   borderRadius: BorderRadius.circular(10.0),
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: topItemHeight,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(5.0)),
                      color: Color(0xffE45D28),
                      image: DecorationImage(
                          image: ExactAssetImage('assets/scheduleMap.png'),
                          fit: BoxFit.fitWidth),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          placeDisplay(),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    width: MediaQuery.of(context).size.width - 24.0,
                    top: topItemHeight,
                    child: FlipCards(opened: opened, count: 3),
                  ),
                  Positioned(
                    width: MediaQuery.of(context).size.width - 24.0,
                    top: topItemHeight,
                    child: SingleCard2(
                      opened: opened,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget placeDisplay() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AutoSizeText(
            '行程1125',
            maxLines: 1,
            style: TextStyle(
                fontFamily: 'Helvetica Neue',
                color: Colors.white,
                fontSize: 22),
          ),
          AutoSizeText(
            '屯門站公共運輸交匯處 —— 屯門曾咀稔灣路',
            maxLines: 1,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildRow(context, 'greeting');
  }
}

class FlipCards extends StatefulWidget {
  final bool opened;
  final int count;
  const FlipCards({Key key, this.opened, this.count}) : super(key: key);
  @override
  _FlipCardsState createState() => _FlipCardsState();
}

class _FlipCardsState extends State<FlipCards>
    with SingleTickerProviderStateMixin {
  bool opened;
  AnimationController animationController;
  @override
  void initState() {
    opened = widget.opened;
    animationController = AnimationController(
        duration: Duration(milliseconds: (normalSpeed * widget.count)),
        vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (opened != widget.opened) {
      opened = widget.opened;
      if (opened) {
        animationController.duration = Duration(
            milliseconds: ((normalSpeed * widget.count) * 1.0).toInt());
        animationController.forward();
      } else {
        animationController.duration = Duration(
            milliseconds: ((normalSpeed * widget.count) * 0.5).toInt());
        animationController.reverse();
      }
    }
    return ColumnBuilder(
      itemBuilder: (_, i) {
        return FlipAnimate(
          index: i,
          count: widget.count,
          animationController: animationController,
          child: SingleCard(),
        );
      },
      itemCount: widget.count,
    );
  }
}

class TimeObj {
  DateTime arv;
}
