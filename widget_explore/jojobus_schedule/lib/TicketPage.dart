import 'package:flutter/material.dart';
import 'package:listview_builder_01/ticketRecord.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'main.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ClipShadowPath extends StatelessWidget {
  final Shadow shadow;
  final CustomClipper<Path> clipper;
  final Widget child;

  ClipShadowPath({
    @required this.shadow,
    @required this.clipper,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ClipShadowShadowPainter(
        clipper: this.clipper,
        shadow: this.shadow,
      ),
      child: ClipPath(child: child, clipper: this.clipper),
    );
  }
}

class _ClipShadowShadowPainter extends CustomPainter {
  final Shadow shadow;
  final CustomClipper<Path> clipper;

  _ClipShadowShadowPainter({@required this.shadow, @required this.clipper});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipPath = clipper.getClip(size).shift(shadow.offset);
    canvas.drawPath(clipPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class TicketPage extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    ThemeData(fontFamily: 'noto');
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
        backgroundColor: Color(0xff0CBC83).withOpacity(0.45),
        
        title: Text('Bill'),
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => new TicketRecord(),
              ),
            );
          },
        ),
      ),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset('assets/bgMap.png'),

          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: ticket(context),
              ),

              Container(
                height: 84.0,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 16.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    color: Color(0xff0CBC83),
                    child: Text(
                      'DONE!',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              //        Container(
              //   height: 40.0,
              //   width: MediaQuery.of(context).size.width,
              //   padding: EdgeInsets.symmetric(horizontal: 16.0),
              //   child: RaisedButton(
              //     onPressed: () async {

              //     },
              //     color: Cor.mainColor,
              //     child: Text(
              //       "下一步",
              //       style: TextStyle(color: Colors.white, fontSize: 14.0),
              //     ),
              //   ),
              // )
            ],
          )
          // body: ListView.builder(
          //        itemBuilder: (_,i){
          //         return ListTile(title: Text(i.toString()),);
          //       },

          // ),
          // body: SingleChildScrollView(
          //   child: ColumnBuilder(r
          //       itemBuilder: (_,i){
          //         return ListTile(title: Text(i.toString()),);
          //       },
          //       itemCount: 199,
          //   )
          // ),
        ],
      ),
    );
  }

  Widget ticket(BuildContext context) {
    return ClipShadowPath(
      shadow: Shadow(
        color: Color(0xffCACACC),
        blurRadius: 12.0,
        offset: Offset(-2, 0),
      ),
      clipper: TicketClipper(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 40.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          // boxShadow: [

          // ]
        ),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                         
                          Text(
                            '西灣河',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            '香港島',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(16),
                    child: Image.asset('assets/twowayarrow.png')),
                // Container(
                //   child: Column(children: <Widget>[
                //    Icon(Icons.arrow_right),
                //    Icon(Icons.arrow_left),

                //   ],),
                // ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '旺角',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF3D3D3D),
                              fontSize: 24.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              '西九龍',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF3D3D3D),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 19.0),
            Container(
              color: Color(0xffF0F0F0),
              height: 1,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 31.0,
            ),
            SizedBox(
              height: 31.0,
            ),
            SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '出發日期:  周五,11月29日 2019.  20:00',
                      style: TextStyle(
                          color: Color(0xff3D3D3D),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      '回程日期:  周五,11月29日 2019.  20:00',
                      style: TextStyle(
                          color: Color(0xff3D3D3D),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    QrImage(
                      data: 'https://www.google.com',
                      version: QrVersions.auto,
                      size: 150,
                      gapless: false,
                    ),
                    Text(
                      '*必須準時，需依指定時間',
                      style:
                          TextStyle(color: Color(0xff919191), fontSize: 12.0),
                    ),
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

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const height = 300.2;

    Path path = Path();

    path.lineTo(0.0, height);
    path.lineTo(16.0, height + 16.0);
    path.lineTo(0.0, height + 32.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, height + 32);
    path.lineTo(size.width - 16, height + 16);
    path.lineTo(size.width, height);
    path.lineTo(size.width, 0.0);

    // path.addOval(Rect.fromCircle(
    //     center: Offset(0.0, size.height / 2), radius: 20.0));
    // path.addOval(Rect.fromCircle(
    //     center: Offset(size.width, size.height / 2), radius: q20.0));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
