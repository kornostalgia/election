import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:korelectioninfo/constant.dart';

class DetailTwo extends StatefulWidget {
  @override
  _DetailTwoState createState() => _DetailTwoState();
}

class _DetailTwoState extends State<DetailTwo> {
  final GlobalKey<ExpansionTileCardState> cardA1 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB1 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC1 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD1 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardE1 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardF1 = new GlobalKey();

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
              key: cardA1,
              title: Text('제86조 제5항',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "\n주체 : 지방자치단체장(소속 공무원도 포함)\n제한 기간 : 지자체장 선거의 선거일 전 180일 전일까지\n제한 행위 : 지지자체의 사업계획, 추진실적 그 밖의 활동상황을 알리기 위한 홍보물을 분기별 1종 1회까지 발행, 배부하는 행위"
                  '\n\n< 시기와 관계 없이 가능한 경우>\n1. 법령에 의하여 발행ㆍ배부 또는 방송하도록 규정된 홍보물을 발행ㆍ배부 또는 방송하는 행위\n2. 특정사업을 추진하기 위하여 그 사업과 이해관계가 있는 자나 관계주민의 동의를 얻기 위한 행위\n3. 집단민원 또는 긴급한 민원이 발생하였을 때 이를 해결하기 위한 행위\n4. 기타 위 각호의 1에 준하는 행위로서 중앙선거관리위원회규칙이 정하는 행위',
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
                        "금지 기간 : 지자체장 선거의 선거일 전 180일부터\n제한 행위 : 지지자체의 사업계획, 추진실적 그 밖의 활동상황을 알리기 위한 홍보물을 발행, 배부하는 행위",
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
              key: cardB1,
              title: Text("가능한 경우(규칙 제47조 제4항)",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "\n1. 소속직원의 직무교육이나 업무추진을 위한 홍보물\n2. 각종 통계ㆍ정보등을 알리기 위하여 정기적으로 발행하는 백서ㆍ연감 또는 총람등의 홍보물\n3. 지방자치단체가 개최하는 사업설명회ㆍ교양강좌ㆍ공청회ㆍ체육대회ㆍ기념일ㆍ고유축제등 각종행사를 안내하기 위한 홍보물(지방자치단체의 장의 성명ㆍ사진ㆍ활동상황ㆍ공약실천사항 기타 업적이 게재된 홍보물을 제외한다. 이하 이 항에서 같다)\n4. 환경ㆍ의료ㆍ교통ㆍ조세ㆍ건축등에 대한 민원안내서 또는 반상회보등 주민의 일상생활에 필요한 정보제공을 위한 홍보물\n5. 역사ㆍ지리ㆍ문화ㆍ특산물ㆍ관광명소등을 안내하기 위한 홍보물\n6. 재난관리ㆍ안전사고의 예방을 위한 홍보물\n7. 지방자치단체의 청사의 입구, 외벽면 또는 담장에 게시하는 홍보물(지방자치단체의 장의 직명이 게재된 홍보물을 제외한다)\n8. 그 밖에 위 각 호의 어느 하나에 준하는 것으로 중앙위원회가 정하는 홍보물",
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
                        "지방자치단체가 보조금을 후원하지 않고 단순히 후원 명의만을 제공하더라도 금지되는 후원에 해당함",
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
          Padding(
            padding: const EdgeInsets.all(15),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              key: cardC1,
              title: Text("제86조 제1항의 업적홍보와의 관계",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  '\n지자체의 홍보물이 배부 가능한 경우라 할지라도 해당 지자체의 사업계획, 추진실적, 활동상황을 알리기 위한 목적을 벗어나 해당 지자체장의 업적홍보에 이르는 경우에는 제86조 제1항에 위반됨 ',
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
          )
        ],
      ),
    );
  }
}
