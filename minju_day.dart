import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:korelectioninfo/constant.dart';

class MinjuDay extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: secondaryColor,
        title: Text(
          '더불어민주당 재20대 대선 후보 경선일정',
          style: TextStyle(
            fontFamily: 'Jua',
            fontSize: 17,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              title: Text('경선 개요',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "당헌, 당규에 따라 대선 180일 전까지 후보 선출"
                      "\n6월까지 6명의 예비경선 후보 선출 후 9월까지 최종 대선후보 선출"
                      "\n등록 장소 : \n중앙당 2층 회의실 등록접수처"
                      "\n(전화 02-2630-7033~4)",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: 'CuteFont')),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text('',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.blueAccent,
                            fontFamily: 'CuteFont')),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              title: Text('예비 경선 진출자 확정',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                      "예비 경선 : 일반 국민 대상 여론조사 100% 반영"
                      "\n진출자 : 8명",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: 'CuteFont')),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text('',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.blueAccent,
                            fontFamily: 'CuteFont')),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 5),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              title: Text('2차 컷오프',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "당원투표 30%, 국민여론조사 70%"
                      "\n2차 컷오프 인원 : 4명",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: 'CuteFont')),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text('',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.blueAccent,
                            fontFamily: 'CuteFont')),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 5),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              title: Text('국민여론조사',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "지지정당 질문(국민의힘 지지하면 끊어짐)"
                      "\n민주당 지지 또는 지지정당 없음이면 투표 진행(중도층 투표 가능)"
                      "\n9. 3. ~ 5. 국민선거인단 여러분의 미래를 위한 한 표를 부탁드립니다.",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: 'CuteFont')),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text('',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.purpleAccent,
                            fontFamily: 'CuteFont')),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              title: Text('예비 경선',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "2021. 7. 12. ~ 13.(2일간)",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: 'CuteFont')),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text('',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.purpleAccent,
                            fontFamily: 'CuteFont')),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              title: Text('선거인단 모집',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "2021. 7. 14. ~ 8. 2.",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: 'CuteFont')),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text('',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.purpleAccent,
                            fontFamily: 'CuteFont')),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              title: Text('순회 경선',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "2021. 8. 3. ~ 9. 5.",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: 'CuteFont')),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text('',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.purpleAccent,
                            fontFamily: 'CuteFont')),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              title: Text('대통령 후보 확정',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "2021. 9. 5.",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: 'CuteFont')),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text('',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.purpleAccent,
                            fontFamily: 'CuteFont')),
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
