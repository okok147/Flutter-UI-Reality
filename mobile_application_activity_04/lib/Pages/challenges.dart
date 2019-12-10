import 'package:flutter/material.dart';
import 'package:mobile_application_activity_03/utils.dart';
import 'package:mobile_application_activity_03/weekly_challenge.dart';
import 'package:mobile_application_activity_03/tom_weekly_challenge.dart';
import 'package:mobile_application_activity_03/FadeAnimation.dart';

void main() => runApp(Challenges());

class Challenges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: <Widget>[
          Container(
            height: 315,
           
            margin: EdgeInsets.fromLTRB(24, 12, 24, 12),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey.withOpacity(0.4),
              ),
              borderRadius: BorderRadius.circular(28),
            ),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FadeAnimation(
                        1,
                        Text(
                          'Weekly challenge',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Arimo-Regular'),
                        ),
                      ),
                      detailRow,
                    ],
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Positioned(
                      child: FadeAnimation(
                        2,
                        TomLineChartSample2(),
                      ),
                    ),
                    FadeAnimation(
                      2,
                      MaggieLineChartSample2(),
                    ),
                    Positioned(
                      top: 23,
                      right: 58,
                      child: FadeAnimation(
                        3.5,
                        Container(
                          height: 28,
                          width: 28,
                          child: Center(
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://img.etimg.com/thumb/msid-59821212,width-643,imgsize-207608,resizemode-4/science-reveals-harry-styles-is-one-of-the-most-handsome-people-in-the-world.jpg'),
                              child: InkWell(
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 62,
                      right: 27,
                      child: FadeAnimation(
                        2,
                        Container(
                          height: 28,
                          width: 28,
                          child: Center(
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://bradleyrentals.net/wp-content/uploads/sites/5/2018/03/5685885-pretty-girl-images.jpg'),
                              child: InkWell(
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                FadeAnimation(
                  2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 32.0),
                        child: Text(
                          '0',
                          style: weeklyChallengeNormalTextStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Text(
                          '10k',
                          style: weeklyChallengeNormalTextStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          '20k',
                          style: weeklyChallengeNormalTextStyle,
                        ),
                      ),
                      Text(
                        '30k',
                        style: weeklyChallengeNormalTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(
                          '41.5k',
                          style: weeklyChallengeTomTextStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24.0),
                        child: Text(
                          '48.4k',
                          style: weeklyChallengeMaggieTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                FadeAnimation(
                  2,
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Container(
                        color: Colors.transparent,
                        height: 30,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                                text: '  Maggie  ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                    fontFamily: 'Cabin',
                                    fontWeight: FontWeight.w600),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' vs ',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.75),
                                      fontFamily: 'Arimo-Regular',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  TextSpan(text: '  Tom  '),
                                ]),
                          ),
                        )),
                  ),
                ),
                FadeAnimation(
                  2,
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      color: Colors.transparent,
                      height: 24,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Challenge finish  -7.09(3 days)',
                          style: weeklyChallengeTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          FadeAnimation(
            2,
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 2, 24, 8),
              child: Container(
                decoration: activityHeartRateCardDecoration,
                height: 205,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(22, 16, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        2,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Common global challenge',
                              style: activityCardTextStyle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Finish - 30.09(30 days left)",
                              style: commonTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 32, 0),
                        child: Row(
                          children: <Widget>[
                            FadeAnimation(
                              3,
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber.withOpacity(1),
                                ),
                                height: 110,
                                width: 110,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 22, 0, 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        '62',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontFamily: 'Arimo-Regular'),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'day goals',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Arimo-Regular',
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(48, 0, 0, 0),
                              child: Container(
                                height: 100,
                                width: 130,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    FadeAnimation(
                                      3,
                                      Text(
                                        'You are better than 78% of people.',
                                        style: commonTextStyle,
                                      ),
                                    ),
                                    FadeAnimation(
                                      12,
                                      whiteDetailRow,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeAnimation(
                  3,
                  Text(
                    'Challenge a friend...',
                    style: TextStyle(
                      fontFamily: 'Arimo-Regular',
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 0, 16),
                  child: Container(
                    height: 55,
                    color: Colors.transparent,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FadeAnimation(
                          3,
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              color: Colors.blue.withOpacity(0.08),
                              width: 55,
                              child: InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.add,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 18.5),
                            child: FadeAnimation(
                              3.5,
                              Container(
                                width: 55,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUJbllMUM3ghFuGFDIoDUBsx-xoGF8oP_Fy4AjCZeBMEhQwSq3',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.5),
                          child: FadeAnimation(
                            3.5,
                            Container(
                              width: 55,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://static.wixstatic.com/media/48fd98_a0b82991b9f14f03828d06ae6816d890~mv2_d_2570_3855_s_4_2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.5),
                          child: FadeAnimation(
                            3.5,
                            Container(
                              width: 55,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'http://www.suneseemodel.com/wp-content/uploads/2018/12/LG-590x590.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.5),
                          child: FadeAnimation(
                            3.5,
                            Container(
                              width: 55,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfxsE9iAw5kiOmxn6Rhy9mnF3Kif9RE4mPbEeChqVIvcxo3_bk',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.5),
                          child: FadeAnimation(
                            3.5,
                            Container(
                              width: 55,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://www.telegraph.co.uk/content/dam/beauty/Spark/shiseido/neelam-gill-model.jpg?imwidth=450',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
