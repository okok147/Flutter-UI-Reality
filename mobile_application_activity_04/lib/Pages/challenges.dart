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
            height: 320,
            width: 150,
            margin: EdgeInsets.fromLTRB(24, 16, 24, 24),
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
                      Row(
                        children: <Widget>[
                          FadeAnimation(
                            2,
                            Text(
                              'Details',
                              style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.underline,
                                textBaseline: TextBaseline.alphabetic,
                              ),
                            ),
                          ),
                          FadeAnimation(
                            2,
                            InkWell(
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ),
                              onTap: () {},
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Positioned(
                      child: FadeAnimation(
                        3,
                        TomLineChartSample2(),
                      ),
                    ),
                    FadeAnimation(
                      4,
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
                        3.5,
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
                  5,
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
                  6,
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
                  7,
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      color: Colors.transparent,
                      height: 32,
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
        ],
      ),
    );
  }
}
