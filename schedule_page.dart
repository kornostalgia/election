import 'package:flutter/material.dart';
import 'package:korelectioninfo/constant.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  var yearList = [
    "2021",
    "2021",
    "2021",
    "2021",
    "2021",
    "2022",
    "2022",
    "2022"
  ];
  var dayList = ["6", "7", "9", "10", "12", "1", "2", "3"];

  var firstList = [
    "인구수 등의 통보 (6. 15.까지)",
    "선거비용제한액 공고통지 (7. 2.까지)",
    "Hard Work",
    "Decision",
    "Confidence",
    "Business",
    "Team Work"
  ];

  var secondList = [
    "인구의 기준일\n(예비후보자등록신청개시일이 속하는 달의 전전달 말일)\n후 15일까지",
    "예비후보자등록신청개시일 전 10일까지",
    "Hard Work changes the life.",
    "Sometimes it's the smallest decisions that can ",
    "Confidence is the most beautiful thing you can possess",
    "A big business starts small.",
    "Talent wins games, but teamwork and intelligence "
  ];

  var thirdList = [
    "",
    "예비후보자 등록신청 (7. 12.부터)",
    "Hard Work",
    "Decision",
    "Confidence",
    "Business",
    "Team Work"
  ];

  var fourthList = [
    "",
    "선거일 전 240일부터",
    "Hard Work changes the life.",
    "Sometimes it's the smallest decisions that can ",
    "Confidence is the most beautiful thing you can possess",
    "A big business starts small.",
    "Talent wins games, but teamwork and intelligence "
  ];

  @override
  Widget build(BuildContext context) {
    List<Color> _colors = [Colors.blueGrey, Colors.black54];
    List<double> _stops = [0.0, 1.5];

    return Scaffold(
        backgroundColor: secondaryColor,
        appBar: AppBar(
          elevation: 0.3,
          backgroundColor: secondaryColor,
          title: Text(
            '대통령선거 시기별 주요 선거 일정',
            style: TextStyle(
              fontFamily: 'Jua',
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: _colors,
                                  stops: _stops,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    '인구수 등의 통보 (6. 15.까지)',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.deepOrangeAccent,
                                        fontFamily: 'CuteFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '인구의 기준일\n(예비후보자등록신청개시일이 속하는 달의 전전달 말일)\n후 15일까지',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'CuteFont',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff553831),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '2021년',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '6월',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ])),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.23,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: _colors,
                                  stops: _stops,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    '선거비용제한액 공고통지 (7. 2.까지)',
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.deepOrangeAccent,
                                        fontFamily: 'CuteFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '예비후보자등록신청개시일 전 10일까지',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'CuteFont',
                                    ),
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                  ),
                                  Text(
                                    '예비후보자 등록신청 (7. 12.부터)',
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.deepOrangeAccent,
                                        fontFamily: 'CuteFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '선거일 전 240일부터',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'CuteFont',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff553831),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '2021년',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '7월',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ])),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.17,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: _colors,
                                  stops: _stops,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    '재외선거관리위원회 설치·운영'
                                    '\n(2021.9.10. ~ 2022.4.8)',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.deepOrangeAccent,
                                        fontFamily: 'CuteFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '선거일전 180일부터 선거일후 30일까지',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'CuteFont',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff553831),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '2021년',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '9월',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ])),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.23,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: _colors,
                                  stops: _stops,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    '국외부재자 신고 (2021.10.10 ~ 2022.1.8)',
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.deepOrangeAccent,
                                        fontFamily: 'CuteFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '선거일전 150일부터 60일까지',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'CuteFont',
                                    ),
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                  ),
                                  Text(
                                    '예비후보자 등록신청 (7. 12.부터)',
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.deepOrangeAccent,
                                        fontFamily: 'CuteFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '선거일 전 240일부터',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'CuteFont',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff553831),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '2021년',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '10월',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ])),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.28,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: _colors,
                                  stops: _stops,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    '공무원 등 입후보 제한을 받는 자의 사직 (12. 9.까지)',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.deepOrangeAccent,
                                        fontFamily: 'CuteFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                  ),
                                  Text(
                                    '각급 선관위 위원, 예비군 중대장급 이상의 간부,\n주민자치위원, 통리반의 장이 선거사무관계자 등이\n되고자 하는 때 그 직의 사직 (12. 9.까지)',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.deepOrangeAccent,
                                        fontFamily: 'CuteFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '선거일 전 90일까지',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'CuteFont',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff553831),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '2021년',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '12월',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ])),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.23,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: _colors,
                                  stops: _stops,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    '선거비용제한액 공고통지 (2021.12.9 ~ 2022.3.9)',
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.deepOrangeAccent,
                                        fontFamily: 'CuteFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '선거일전 90일부터 선거일까지',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'CuteFont',
                                    ),
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                  ),
                                  Text(
                                    '예비후보자 등록신청 (7. 12.부터)',
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.deepOrangeAccent,
                                        fontFamily: 'CuteFont',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '선거일 전 240일부터',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'CuteFont',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff553831),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '2021년',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '12월',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ])),
                  ]),
            ),
          ),
        ));
  }
}
