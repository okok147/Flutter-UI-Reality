import 'package:flutter/material.dart';
import 'package:listview_builder_01/bzWidget.dart';
import 'package:listview_builder_01/main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:listview_builder_01/TicketPage.dart';

import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

//stless + tab

class TicketRecord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Ticket Record';

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85.0),
        child: AppBar(
          title: new Text(title),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Hero(tag: 'ticketPage', child: ticketRecordCard(context)),
          ),
          ticketRecordCard(context),
          ticketRecordCard(context),
          ticketRecordCard(context),
        ],
      ),
    );
  }
}

Widget placeDisplay1() {
  return Expanded(
    child: Column(
      children: <Widget>[
        AutoSizeText(
          'Mong Kong',
          maxLines: 1,
          style: TextStyle(
              fontFamily: 'Helvetica Neue', color: Colors.white, fontSize: 18),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: AutoSizeText(
            'Hong Kong',
            maxLines: 1,
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w200),
          ),
        )
      ],
    ),
  );
}

Widget placeDisplay2() {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AutoSizeText(
          'Mong Kong',
          maxLines: 1,
          style: TextStyle(
              fontFamily: 'Helvetica Neue', color: Colors.white, fontSize: 18),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: AutoSizeText(
            'Hong Kong',
            maxLines: 1,
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w200),
          ),
        )
      ],
    ),
  );
}

Widget ticketRecordCard(context) {
  var timeTextStyle = TextStyle(
      fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold);
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: () {
        print('123');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => new SecondScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: Container(
          height: 205,
          child: Material(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: <Widget>[
                Container(
                  height: 145,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10.0),
                    ),
                    color: mainColor,
                    image: DecorationImage(
                        image: ExactAssetImage('assets/scheduleMap.png'),
                        fit: BoxFit.fitWidth),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 32, 0, 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              placeDisplay1(),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Image.asset(
                                  'assets/dot_to_bus.png',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              placeDisplay2(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'AM 10:00',
                                style: timeTextStyle,
                              ),
                              Text(
                                'PM 22:00',
                                style: timeTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 92,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 24,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: ExactAssetImage(
                                        'assets/car_record.png'),
                                    fit: BoxFit.fitWidth),
                              ),
                            ),
                            AutoSizeText(
                              "1 Ticket",
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.65),
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 150,
                        child: Row(
                          children: <Widget>[
                            AutoSizeText(
                              "Total: ",
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 14.0),
                            ),
                            AutoSizeText(
                              'HK\$ 2400',
                              style: TextStyle(fontSize: 24.0),
                            )
                          ],
                        ),
                      ),
                    ],
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

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TicketPage());
  }
}

// class TicketPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Screen"),
//         leading: IconButton(
//           icon: Icon(Icons.chevron_left),
//           onPressed: () {
//             Navigator.pushReplacement(context,
//                 MaterialPageRoute(builder: (context) => new TicketPage()));
//           },
//         ),
//       ),
//       body: Hero(
//           tag: 'ticketPage',
//           child: Center(
//             child: Column(
//               children: <Widget>[

                
                
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal:24.0,vertical: 16.0),
//                   child: Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: 44,
//                     child: RaisedButton(
//                       color: Color(0xff0CBC83),
//                       onPressed: () {
//                         // Navigate back to the first screen by popping the current route
//                         // off the stack.

//                         //solve the problem of black screen when navigate.pop

//                         //           Navigator.push(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //     builder: (context) => new SecondScreen(),
//                         //   ),
//                         // );
//                       },
//                       child: Text('Done!',style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 17.0
//                       ),),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )),
//     );
//   }
// }
