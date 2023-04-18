import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:korelectioninfo/constant.dart';

class DetailFive extends StatefulWidget {
  @override
  _DetailFiveState createState() => _DetailFiveState();
}

class _DetailFiveState extends State<DetailFive> {
  final GlobalKey<ExpansionTileCardState> cardA4 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB4 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC4 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD4 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardE4 = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardF4 = new GlobalKey();

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
              key: cardA4,
              title: Text('제112조 제1항',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  '\n < 기부행위의 정의 >'
                      '\n금지 기간 : 상시'
                      '\n기부 대상 : 당해 선거구안에 있는 자나 기관ㆍ단체ㆍ시설 및 선거구민의 모임이나 행사 또는 당해 선거구의 밖에 있더라도 그 선거구민과 연고가 있는 자나 기관ㆍ단체ㆍ시설'
                      '\n행위 : 금전ㆍ물품 기타 재산상 이익의 제공, 이익제공의 의사표시 또는 그 제공을 약속하는 행위',
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
              key: cardB4,
              title: Text("제112조 제2항 제4호",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                      "\n < 기부행위에 해당하지 않은 경우(직무상 행위) >"
                      "\n1. 국가기관 또는 지방자치단체가 자체사업계획과 예산으로 행하는 법령에 의한 금품제공행위(지방자치단체가 표창ㆍ포상을 하는 경우 부상은 제외)"
                      "\n2. 지방자치단체가 자체사업계획과 예산으로 대상ㆍ방법ㆍ범위 등을 구체적으로 정한 당해 지방자치단체의 조례에 의한 금품제공행위(표창ㆍ포상을 하는 경우 부상 제외)"
                      "\n3. 구호사업 또는 자선사업을 행하는 국가기관 또는 지방자치단체가 자체사업계획과 예산으로 당해 국가기관 또는 지방자치단체의 명의를 나타내어 행하는 구호행위ㆍ자선행위"
                      "\n4. 선거일 전 60일까지 국가ㆍ지방자치단체 또는 공공기관의 장이 업무파악을 위한 초도순시 또는 연두순시차 하급기관을 방문하여 업무보고를 받거나 주민여론 등을 청취하면서 자체사업계획과 예산에 따라 참석한 소속 공무원이나 임ㆍ직원, 유관기관ㆍ단체의 장과 의례적인 범위안의 주민대표에게 통상적인 범위안에서 식사류(지방자치단체의 장의 경우에는 다과류를 말한다)의 음식물을 제공하는 행위"
                      "\n5. 국가기관 또는 지방자치단체가 긴급한 현안을 해결하기 위하여 자체사업계획과 예산으로 해당 국가기관 또는 지방자치단체의 명의로 금품이나 그 밖에 재산상의 이익을 제공하는 행위"
                      "\n6. 선거기간이 아닌 때에 국가기관이 효자ㆍ효부ㆍ모범시민ㆍ유공자등에게 포상을 하거나, 국가기관ㆍ지방자치단체가 관할구역 안의 환경미화원ㆍ구두미화원ㆍ가두신문판매원ㆍ우편집배원 등에게 위문품을 제공하는 행위"
                      "\n7. 국회의원 및 지방의회의원이 자신의 직무 또는 업무를 수행하는 상설사무소 또는 상설사무소를 두지 아니하는 구ㆍ시ㆍ군의 경우 임시사무소 등 중앙선거관리위원회규칙으로 정하는 장소에서 행하거나, 정당이 해당 당사에서 행하는 무료의 민원상담행위"
                      "\n8. 변호사ㆍ의사 등 법률에서 정하는 일정한 자격을 가진 전문 직업인이 업무활동을 촉진하기 위하여 자신이 개설한 인터넷 홈페이지를 통하여 법률ㆍ의료 등 자신의 전문분야에 대한 무료상담을 하는 행위"
                      "\n9. 제114조 제2항에 따른 후보자 또는 그 가족과 관계있는 회사가 영업활동을 위하여 달력ㆍ수첩ㆍ탁상일기ㆍ메모판 등 홍보물(후보자의 성명이나 직명 또는 사진이 표시된 것은 제외한다)을 그 명의로 종업원이나 제한된 범위의 거래처, 영업활동에 필요한 유관기관ㆍ단체ㆍ시설에 배부하거나 영업활동에 부가하여 해당 기업의 영업범위에서 무료강좌를 실시하는 행위"
                      "\n10. 물품구매ㆍ공사ㆍ역무의 제공 등에 대한 대가의 제공 또는 부담금의 납부 등 채무를 이행하는 행위",
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
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
            child: ExpansionTileCard(
              contentPadding: EdgeInsets.all(15),
              baseColor: Colors.cyan[50],
              expandedColor: Colors.red[50],
              key: cardA4,
              title: Text('제112조 제4항',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic')),
              subtitle: Text(
                  '\n제112조 제2항 제4호 각 목 중 지방자치단체의 직무상 행위는 법령ㆍ조례에 따라 표창ㆍ포상하는 경우를 제외하고는 해당 지방자치단체의 명의로 하여야 하며, 해당 지방자치단체의 장의 직명 또는 성명을 밝히거나 그가 하는 것으로 추정할 수 있는 방법으로 하는 행위는 기부행위로 본다.'
                      '\n\n < "그가 하는 것으로 추정할 수 있는 방법”에 해당하는 것으로 보는 경우 >\n1. 종전의 대상ㆍ방법ㆍ범위ㆍ시기 등을 법령 또는 조례의 제정 또는 개정 없이 확대 변경하는 경우\n2. 해당 지방자치단체의 장의 업적을 홍보하는 등 그를 선전하는 행위가 부가되는 경우',
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
        ],
      ),
    );
  }
}