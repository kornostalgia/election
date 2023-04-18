import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:korelectioninfo/constant.dart';

class DetailThree extends StatefulWidget {
  @override
  _DetailThreeState createState() => _DetailThreeState();
}

class _DetailThreeState extends State<DetailThree> {
  final GlobalKey<ExpansionTileCardState> cardA2 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB2 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC2 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD2 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardE2 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardF2 = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: secondaryColor,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              key: cardA2,
              title: Text('제86조 제2항',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  '\n주체 : 지방자치단체장'
                      '\n제한기간 : 선거일 전 60일부터 선거일까지'
                      '\n\n< 금지 행위 >'
                      '\n1. 정당의 정강ㆍ정책과 주의ㆍ주장을 선거구민을 대상으로 홍보ㆍ선전'
                      '\n다만, 당해 지자체장의 선거에 예비후보자 또는 후보자가 되는 경우에는 가능'
                      '\n2. 창당대회ㆍ합당대회ㆍ개편대회 및 후보자선출대회를 제외하고는 정당이 개최하는 시국강연회, 정견ㆍ정책발표회, 당원연수ㆍ단합대회 등 일체의 정치행사에 참석'
                      '\n3. 선거대책기구, 선거사무소, 선거연락소 방문'
                      '\n다만, 해당 지자체장선거에 예비후보자 또는 후보자가 된 경우와 당원으로서 소속 정당이 당원만을 대상으로 개최하는 정당의 공개행사에 의례적인 방문은 가능'
                      '\n4. 통ㆍ리ㆍ반장의 회의에 참석하는 행위. '
                      '\n다만, 천재ㆍ지변 기타 재해가 있거나 집단민원 또는 긴급한 민원이 발생하였을 때에는 가능함',
                  style: TextStyle(
                      fontSize: 19,
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
                    padding: const EdgeInsets.all(15),
                    child: Text(
                        '',
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
            padding: const EdgeInsets.all(15),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              key: cardB2,
              title: Text("제86조 제6항",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "\n주체 : 지장자치단체장"
                      "\n제한 기간 : 지자체장선거의 선거일 전 180일부터 선거일까지"
                      "\n\n < 제한 행위 >"
                      "\n1. 주민자치센터가 개최하는 교양강좌 참석"
                      "\n2. 근무시간 중 공공기관이 아닌 단체 등이 주최하는 행사 참석"
                      "\n다만, 이 경우에도 창당, 합당, 개편, 선출대회에 참석하거나 지자체장선거에서 (에비)후보가 된 경우와 소속 정당이 당원만을 대상으로 개최하는 정당의 공개행사는 참석 가능(제86조 제2항 제3호)",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.normal,
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
                    child: Text(
                        '',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
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
