import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:korelectioninfo/constant.dart';

class DetailOne extends StatefulWidget {
  @override
  _DetailOneState createState() => _DetailOneState();
}

class _DetailOneState extends State<DetailOne> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();

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
              key: cardA,
              title: Text('제86조 제2항 제4호',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "\n주체 : 지방자치단체장(소속 공무원도 포함)\n제한 기간 : 선거일 전 60일부터 선거일까지\n제한 행위 : 교양강좌, 사업설명회, 공청회, 직능단체모임, 체육대회, 경로행사, 민원상담 기타 각종 행사의 개최 또는 후원\n\n< 가능한 경우>"
                      "\n가.법령에 의하여 개최하거나 후원하도록 규정된 행사를 개최･후원하는 행위\n나.특정일･특정시기에 개최하지 아니하면 그 목적을 달성할 수 없는 행사\n다. 천재･지변 기타 재해의 구호･복구를 위한 행위"
                  "\n라. 직업지원 교육 또는 유상으로 실시하는 교양강좌를 개최･후원하는 행위 또는 주민자치센터가 개최하는 교양강좌를 후원하는 행위(다만, 종전의 범위를 넘는 새로운 강좌를 개설하거나 수강생을 증원하거나 장소를 이전하여 실시하는 주민자치센터의 교양강좌를  후원하는 행위는 제외)"
                  "\n마. 집단민원 또는 긴급한 민원이 발생하였을때 이를 해결하기 위한 행위\n바. 가목 내지 마목에 준하는 행위로서 중앙선거관리위원회규칙으로 정하는 행위",
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text('규칙 제47조 제2항(공무원 등의 선거에 영향을 미치는 행위 금지의 예외)'
                        '\n1. 국가유공자의 위령제, 국경일의 기념식, 「각종기념일 등에 관한 규정」 제2조(기념일등)에 의하여 시행하는 기념행사의 개최ㆍ후원\n2. 법령ㆍ조례에 의하여 주민의 동의를 필요로 하는 사업의 시행을 위한 사업설명회의 개최\n3. 읍ㆍ면ㆍ동이상의 행정구역 단위의 정기적인 종합주민체육대회나 전래적인 고유축제의 개최ㆍ후원\n4. 정부가 주관하는 공공행사에 인력ㆍ시설ㆍ장비 등의 지원\n5. 그 밖에 위 각 호의 어느 하나에 준하는 행위로서 중앙위원회가 정하는 행위',
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
              key: cardB,
              title: Text("적용 범위",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  "\n선거일 전 60일부터 금지되므로 모든 공직선거에 적용되고 보궐선거가 실시되는 경우 당해 선거구민을 주된 대상으로 하는 각종 행사를 개최 또는 후원이 금지됨",
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
              key: cardC,
              title: Text("법 제112조 제2항 제4호의 기부행위와의 관계",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  '제112조 제2항 제4호의 기부행위와 제86조 재2항 제4호의 행사의 개최, 후원은 각각 별개의 근거 법령이 있어야 가능하므로 행사의 개최, 후원이 법령에 근거하였더라도 그 행사에서 기부행위를 하는 것까지 허용하는 것은 아',
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
                        "해당 행사에 필수불가결한 범위의 기부행위는 그 행사에 부수된 것으로 볼 수 있으므로 해당 범위의 기부는 가능함.",
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
