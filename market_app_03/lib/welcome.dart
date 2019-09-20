import 'package:flutter/material.dart';
import 'package:profile_clone/Homepage.dart';


class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String dropdownValue = 'Designer';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //(0xffFAFAFA)
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 1000.0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 0.0, bottom: 8.0, left: 30.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Welcome',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Start to sell your products today',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0.0,
                    left: 0.0,
                  ),
                  child: Container(
                      height: 350.0,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/welcome_page.jpg')),

                        //it took ~40 mins to finish the coding above
                      )),
                ),
                Container(
                  height: 10,
                  color: Colors.white,
                ),
                Container(
                  height: 50.0,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0, right: 0.0),
                        child: Text(
                          'I \' m   ',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w200,
                              fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: DropdownButton<String>(
                          isExpanded: false,
                          iconSize: 15.0,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 22.0),
                          value: dropdownValue,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['Designer', 'Developer', 'Engineer']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,
                                    ));
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 50.0),
                  child: Container(
                      height: 50.0,
                      alignment: Alignment.bottomLeft,
                      color: Colors.white,
                      child: TextField(
                        textInputAction: TextInputAction.done,
                        autofocus: true,
                        enableInteractiveSelection: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            hintStyle: TextStyle(fontWeight: FontWeight.w300)),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 100.0),
                  child: Container(
                    height: 1.5,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [
                          0.1,
                          0.5,
                          0.7,
                          0.9
                        ],
                            colors: [
                          Colors.indigo[600],
                          Colors.indigo[300],
                          Colors.indigo[200],
                          Colors.indigo[100],
                        ])),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 130.0,bottom: 20.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '01',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0),
                      ),
                      Spacer(flex: 1),
                      Stack(
                        children: <Widget>[
                          Positioned(
                            child: Container(
                              height: 7,
                              width: 40.0,
                              decoration: new BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: 7,
                              width: 10.0,
                              decoration: new BoxDecoration(
                                color: Colors.white70,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(flex: 11),
                      Stack(
                        children: <Widget>[
                          Positioned(
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              color: Colors.white,
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      Colors.blueAccent.withOpacity(0.3),
                                  borderRadius: new BorderRadius.all(
                                      Radius.circular(30.0)),
                                ),
                                height: 35.0,
                                width: 35.0,
                              ),
                            ),
                          ),
                          Positioned(

                              child: Container(
                                width: 74.0,

                            height: 40.0,
                            child: FlatButton(
                              child: Text(
                                'Next',
                                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600,color: Colors.black87),

                              ),

                              onPressed: (){

                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                        new MyHomePage()));

                              },
                            ),
                          ))
                        ],
                      ),
                      Spacer(
                        flex: 3,
                      ),
                    ],
                  ),
                ),

                /*Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.navigate_next,
                        size: 30.0,
                        color: Colors.blueAccent,

                      ),splashColor: Colors.lightGreen,

                      onPressed: (){

                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context)=> new MyHomePage()
                            )
                        );

                      },)
                ), */
              ],
            )
          ],
        ),
      ),
    );
  }
}
