import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
        child: ListView(
          children: <Widget>[
            Container(
              height: screenHeight / 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: screenHeight / 19.5,
                    width: screenWidth / 9,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.squarespace-cdn.com/content/v1/5a9aaafc9772ae0eafefb6d2/1522595461172-K0M62BZXB9D95K5GKTHR/ke17ZwdGBToddI8pDm48kOaD2e8dx9ABzbAyRI3ihwZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UQF4sn_BNjf_S0hsQ3YiA0G6sWp1W5TVWiZLjwta0rE9wG3dwlhpSXXV9Hp3gq5RQg/IMG_0001.JPG?format=500w'),
                    ),
                  ),
                  Text(
                    'Hi, Karen',
                    style: TextStyle(
                        fontSize: screenHeight / 54,
                        color: Color(0xff261738),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: screenWidth / 2.4,
                  ),
                  IconButton(
                    icon: Icon(Icons.sort),
                    onPressed: () {},
                    color: Color(0xff261738),
                  ),
                ],
              ),
            ),
            Container(
              height: screenHeight / 15,
              width: screenWidth,
              color: Colors.greenAccent.withOpacity(0.00),
            ),
            Container(
              height: screenHeight / 1.2,
              width: screenWidth,
              color: Colors.blueAccent.withOpacity(0.00),
            ),
          ],
        ),
      ),
    );
  }
}
