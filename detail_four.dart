import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:korelectioninfo/constant.dart';

class DetailFour extends StatefulWidget {
  @override
  _DetailFourState createState() => _DetailFourState();
}

class _DetailFourState extends State<DetailFour> {
  final GlobalKey<ExpansionTileCardState> cardA3 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB3 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC3 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD3 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardE3 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardF3 = new GlobalKey();

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
              key: cardA3,
              title: Text('제86조 제7항',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  '\n주체 : 지방자치단체장'
                      '\n제한기간 : 상시'
                      '\n\n< 금지 행위 >'
                      '\n소관 사무나 그 밖의 명목 여하를 불문하고 방송ㆍ신문ㆍ잡지나 그 밖의 광고 출연',
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
              key: cardB3,
              title: Text("해 설",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "\n < 입법 취지 >"
                      "\n지자체장이 광자신의 인지도를 높여 선거운동에 활용하기 위한 수단을 금지함으로써 사전선거운동을 효과를 차단하여 공정한 선거가 이루어지도록 함"
                      "\n\n < 광고 범위 >"
                      "\n광고의 개념에는 특정 내용을 불특정 다수에게 널리 알리기 위한 모든 것이 포함되나 본 조의 지자체장이 출연할 수 없는 광고에는 홍보수단을 모두를 포함할 수는 없고 광고의 효과를 나타내는 매체에 따라 광고에 해당하는지 여부를 개별적으로 판단하여야 할 것임",
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