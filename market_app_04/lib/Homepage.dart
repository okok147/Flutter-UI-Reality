import 'package:flutter/material.dart';
import 'package:profile_clone/welcome.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      // (0xffE8E8F3) for original colour

      body: Padding(
        padding:
            const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 8.0, top: 8.0),
        child: ListView(
          
            
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.chevron_left,
                        color: Color(0xff080708),
                        size: 25.0,
                      ),
                      onPressed: () {
                        Navigator.pop(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new WelcomePage()));
                      },
                    ),
                    Spacer(),
                    Text(
                      "Mockups",
                      style: new TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Color(0xff080708),
                        size: 20.0,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),

                /*Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      top: 16.0,
                      child: Card(
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: const Radius.circular(30.0)),
                        ),
                      ),
                    ),
                    Container(height: 200.0, child: Column()),
                    Positioned(
                      top: 36.0,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('123'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('456'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),*/

                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    height: 350.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            flex: 6,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: new InkWell(
                                    splashColor: Colors.redAccent,
                                    onTap: () {},
                                    child: new Container(
                                        height: 300.0,
                                        decoration: new BoxDecoration(
                                            borderRadius: new BorderRadius.only(
                                              topLeft: const Radius.circular(50.0),
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/summer_girl.png'),
                                              fit: BoxFit.fitWidth,
                                            ))),
                                  ),
                                ),
                                Positioned(
                                  top: 25.0,
                                  left: 25.0,
                                  child: new Material(
                                    shape: CircleBorder(),
                                    shadowColor: Colors.transparent,
                                    color: Colors.white,
                                    child: Ink.image(
                                      image: AssetImage('assets/sketch_icon.png'),
                                      fit: BoxFit.cover,
                                      width: 30.0,
                                      height: 30.0,
                                      child: InkWell(
                                        splashColor: Colors.purple,
                                        onTap: () {},
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 4,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  child: new Container(
                                    height: 500.0,
                                    width: 1000.0,
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: new BorderRadius.only(
                                            bottomRight:
                                                const Radius.circular(30.0))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30.0, left: 30.0, right: 30.0),
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0.0, left: 0.0),
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  '10 Flat Mockups',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                    top: 0.0,
                                                  ),
                                                  child: Text(
                                                    "\$\ 19",
                                                    style: TextStyle(
                                                        color:
                                                            Colors.deepOrangeAccent,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 20.0,
                                              bottom: 0.0,
                                            ),
                                            child: Row(
                                              children: <Widget>[
                                                new Material(
                                                  shape: CircleBorder(),
                                                  shadowColor: Colors.transparent,
                                                  color: Colors.transparent,
                                                  child: Ink.image(
                                                    image: AssetImage(
                                                        'assets/women_icon.png'),
                                                    fit: BoxFit.cover,
                                                    width: 30.0,
                                                    height: 30.0,
                                                    child: InkWell(
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                ),
                                                Spacer(
                                                  flex: 1,
                                                ),
                                                Text(
                                                  'Lily',
                                                  style: TextStyle(
                                                      color: Color(0xff5C5F5F),
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                Spacer(
                                                  flex: 15,
                                                ),
                                                 IconButton(
                                                  icon: Icon(
                                                    Icons.favorite,
                                                    color: Colors.orangeAccent,
                                                    size: 20.0,
                                                  ),

                                                  onPressed: (){

                                                  },
                                                ),
                                                Text(
                                                  '1980',
                                                  style: TextStyle(
                                                      color: Color(0xff5C5F5F),
                                                      fontWeight: FontWeight.w500),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    height: 350.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            flex: 6,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: new InkWell(
                                    splashColor: Colors.greenAccent,
                                    onTap: () {},
                                    child: new Container(
                                        height: 300.0,
                                        decoration: new BoxDecoration(
                                            borderRadius: new BorderRadius.only(
                                              topLeft: const Radius.circular(50.0),
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/green_walk.jpg'),
                                              fit: BoxFit.fill,
                                            ))),
                                  ),
                                ),
                                Positioned(
                                  top: 25.0,
                                  left: 25.0,
                                  child: new Container(
                                    child: new Material(
                                      shape: CircleBorder(),
                                      shadowColor: Colors.transparent,
                                      color: Colors.white,
                                      child: Ink.image(
                                        image: AssetImage('assets/figma_icon.png'),
                                        fit: BoxFit.fill,
                                        width: 30.0,
                                        height: 30.0,
                                        child: InkWell(
                                          splashColor: Colors.green,
                                          onTap: () {},
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 4,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  child: new Container(
                                    height: 500.0,
                                    width: 1000.0,
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: new BorderRadius.only(
                                            bottomRight:
                                                const Radius.circular(30.0))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30.0, left: 30.0, right: 30.0),
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0.0, left: 0.0),
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  'Apple Devices Mockups',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                    top: 0.0,
                                                  ),
                                                  child: Text(
                                                    "\$\ 15",
                                                    style: TextStyle(
                                                        color:
                                                            Colors.deepOrangeAccent,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 20.0,
                                              bottom: 0.0,
                                            ),
                                            child: Row(
                                              children: <Widget>[
                                                new Material(
                                                  color: Colors.transparent,
                                                  shape: CircleBorder(),
                                                  child: Ink.image(
                                                    image: AssetImage(
                                                        'assets/men_icon.png'),
                                                    fit: BoxFit.cover,
                                                    width: 30.0,
                                                    height: 30.0,
                                                    child: InkWell(
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                ),
                                                Spacer(
                                                  flex: 1,
                                                ),
                                                Text(
                                                  'David',
                                                  style: TextStyle(
                                                      color: Color(0xff5C5F5F),
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                Spacer(
                                                  flex: 15,
                                                ),
                                                IconButton(
                                                  icon: Icon(
                                                    Icons.favorite,
                                                    color: Colors.orangeAccent,
                                                    size: 20.0,
                                                  ),

                                                  onPressed: (){
                                                    
                                                  },
                                                ),
                                                Text(
                                                  '1875',
                                                  style: TextStyle(
                                                      color: Color(0xff5C5F5F),
                                                      fontWeight: FontWeight.w500),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            
          
        ),
      ),
    );
  }
}
