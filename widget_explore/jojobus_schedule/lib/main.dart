// import 'package:flutter/foundation.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:listview_builder_01/bzWidget.dart';
import 'package:listview_builder_01/ticketRecord.dart';

const mainColor = Color(0xFFECB201);
const normalSpeed = 150;
void main() {
  //change iniital App from MyApp to TicketRecord
  runApp(new TicketRecord(
    // items: new List<String>.generate(10000, (i) => '$i'),
     
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Schedule';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: ListView(
            children: <Widget>[
              TicketCard(count: 3,),
              TicketCard(count: 3,),
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

  const FlipAnimate({Key key, this.child, this.opened, this.index, this.animationController, this.count}) : super(key: key);
  @override
  _FlipAnimateState createState() => _FlipAnimateState();
}

class _FlipAnimateState extends State<FlipAnimate> with  SingleTickerProviderStateMixin{
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
          (widget.index)/(widget.count+1), (widget.index+1)/(widget.count+1),
          curve: Curves.ease,
        ),
     ))..addListener(() {        
        setState(() {});
      });      
  
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {    
      
    if (animation.value==0.0 ){
      return SizedBox();
    }
    if ((widget.index)==0){
      return widget.child;
    }    
    return  Transform(
      alignment: Alignment.topCenter,     
      
      transform: Matrix4.identity()..setEntry(3, 2, -0.001)..rotateX(3.14/2*(1-animation.value)),
      child: widget.child);
  }
}


class SingleCard2 extends StatefulWidget {
  final bool opened;

  const SingleCard2({Key key, this.opened}) : super(key: key);
  @override
  _SingleCard2State createState() => _SingleCard2State();
}

class _SingleCard2State extends State<SingleCard2> with SingleTickerProviderStateMixin{
Animation animation;
AnimationController animationController;
bool opened;
  @override
  void initState() {
    // TODO: implement initState
    opened = widget.opened;
    animationController = AnimationController(duration:  Duration(milliseconds: (normalSpeed ) ), vsync: this);
      animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(       
        parent: animationController,
        
        curve:  Curves.ease
     ))..addListener(() {        
        setState(() {});
      });      

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    if (opened!=widget.opened){
      opened = widget.opened;
      if (opened){
        animationController.duration =  Duration(milliseconds: ((normalSpeed)*1.0).toInt() );
        animationController.forward();
      }else{
        animationController.duration =  Duration(milliseconds: ((normalSpeed)*2.0).toInt() );        
        animationController.reverse();
      }
    }

    return  Transform(
      alignment: Alignment.bottomCenter,     
      
      transform: Matrix4.identity()..setEntry(3, 2, -0.001)..rotateX(3.14/2*(animation.value)),
      child: Container(

            width: MediaQuery.of(context).size.width,
            color: Colors.white,
                  height: 119.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Dep',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontWeight: FontWeight.w200,
                                    color: Color(0xff727272),
                                  ),
                                ),
                                Text(
                                  'AM 10:00',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontFamily: 'Helvetica Neue',
                                    color: Color(0xff404040),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Image.asset('assets/right_arrow.png')),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Dep',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontWeight: FontWeight.w200,
                                    color: Color(0xff727272),
                                  ),
                                ),
                                Text(
                                  'PM 22:00',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontFamily: 'Helvetica Neue',
                                    color: Color(0xff404040),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                        // Divider()
                         Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0),                        
                              child: RichText(
                                  text: TextSpan(
                                    text: 'HK\$ 24 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff23BE8C),
                                        fontSize: 16.0),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'One Ticket',
                                        style: TextStyle(
                                            color: Color(0xff23BE8C),
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: InkWell(
                            splashColor: Colors.blueAccent,
                            child: Image.asset('assets/down_array.png'),
                            // onTap: () {
                            //   opened = !opened;
                              
                            //   setState(() {});
                            //   print(opened);
                            // },
                          ),
                        ),
                      ],
                    )
                    ],
                  ),
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
  @override
  Widget build(BuildContext context) {
    return  buildCard(context);
  }


  Container buildCard(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width,
          
                padding: EdgeInsets.symmetric(horizontal: 20.0,),
                height: itemHeight,
                child: Container(
                  
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1.0,color: Color(0xFF666666).withOpacity(.12) ))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Dep',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontWeight: FontWeight.w200,
                                    color: Color(0xff727272),
                                  ),
                                ),
                                Text(
                                  'AM 10:00',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontFamily: 'Helvetica Neue',
                                    color: Color(0xff404040),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Image.asset('assets/right_arrow.png')),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Dep',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontWeight: FontWeight.w200,
                                    color: Color(0xff727272),
                                  ),
                                ),
                                Text(
                                  'PM 22:00',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontFamily: 'Helvetica Neue',
                                    color: Color(0xff404040),
                                  ),
                                )
                              ],
                            ),
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

  const TicketCard({Key key, this.count}) : super(key: key);
  @override
  _TicketCardState createState() => _TicketCardState();
}

const itemHeight = 96.0;
const topItemHeight = 72.0;
class _TicketCardState extends State<TicketCard> {
  var opened = false;

  Widget _buildRow(BuildContext context, String greeting) {
    return InkWell(
      onTap: (){
        opened = !opened;
        setState(() {
          
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: AnimatedContainer(
          curve:  Curves.fastOutSlowIn,
        duration: Duration(milliseconds: normalSpeed*3),
        height: opened ? (itemHeight*widget.count+72.0) : 191,
                  child: Container(
                    // height: 191.0,
            child: Material(
              elevation: 5,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: topItemHeight,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                        color: mainColor,
                          image: DecorationImage(
                              image: ExactAssetImage('assets/scheduleMap.png'),
                              fit: BoxFit.fitWidth)
                              ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            placeDisplay(),
                            Image.asset(
                              'assets/dot_to_bus.png',
                              fit: BoxFit.fitWidth,
                            ),
                           placeDisplay(),
                          ],
                        ),
                      ),
                    ),
                  ),
                
                  Positioned(
                    width: MediaQuery.of(context).size.width-24.0,
                    top: topItemHeight,
                    child: FlipCards(
                      opened: opened,
                      count: 3
                    ),
                  ),
                    Positioned(
                      width: MediaQuery.of(context).size.width-24.0,
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
                        children: <Widget>[
                          AutoSizeText(
                            
                            'Mong Kong',
                            maxLines: 1,
                            style: TextStyle(
                                fontFamily: 'Helvetica Neue',
                                color: Colors.white,
                                fontSize: 24),
                          ),
                          AutoSizeText(
                            'Hong Kong',
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w200),
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

class _FlipCardsState extends State<FlipCards> with SingleTickerProviderStateMixin {
  
  bool opened;  
   AnimationController animationController;
  @override
  void initState() { 
    opened = widget.opened;
    animationController = AnimationController(duration:  Duration(milliseconds: (normalSpeed * widget.count) ), vsync: this);
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    if (opened!=widget.opened){
      opened = widget.opened;
      if (opened){
        animationController.duration =  Duration(milliseconds: ((normalSpeed * widget.count)*1.0).toInt() );
        animationController.forward();
      }else{
        animationController.duration =  Duration(milliseconds: ((normalSpeed * widget.count)*0.5).toInt() );
        animationController.reverse();
      }
    }
    return  ColumnBuilder(
      itemBuilder: (_,i){
        
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

class TimeObj{

  DateTime arv;

}