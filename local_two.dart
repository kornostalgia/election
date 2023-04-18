import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';

class LocalTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
        title: Text(
          '지방자치단체장 업무추진비 집행대상 직무활동 범위',
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
                fontFamily: 'CuteFont')
        ),
      ),
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16.0,
          //fontFamily: 'monospace',
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  '1. 이재민 및 불우소외계층에 대한 격려 및 지원'
                      '\n가. 다른 지역에서 재난·사고가 발생한 경우 이재민 또는 피해자에 대한 격려금품 지급 및 식사(다과·주류를 포함한다. 이하 같다) 제공'
                      '\n나. 해당 지방자치단체 관할구역에서 재난·사고가 발생한 경우 이재민, 피해자 및 그 유가족, 재난복구 종사자 등에 대한 격려금품 지급 및 식사 제공'
                      '\n다. 해당 지방자치단체 관할구역에서 「공직선거법」 제112조 제2항 제3호에 따른 구호적 또는 자선적 행위',
                  trimLines: 2,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' 자세히',
                  trimExpandedText: ' 접기',
                  moreStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  '2. 시책 또는 지역 홍보'
                      '\n가. 해당 지역특산품 홍보를 위하여 언론관계자에게 의례적인 수준의 특산품 제공'
                      '\n나. 다른 기관·단체와의 협약식에 따른 기념품 증정 또는 교환, 관계자에게 식사 제공'
                      '\n다. 내방객(일반 민원인은 제외한다)에게 의례적인 수준의 기념품 지급'
                      '\n라. 해당 지방자치단체 시책사업 홍보를 위하여 언론관계자 간담회를 개최할 경우 식사 제공',
                  trimLines: 2,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' 자세히',
                  trimExpandedText: ' 접기',
                  moreStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  '3. 학술·문화예술·체육활동 유공자 등에 대한 격려 및 지원'
                      '\n가. 해당 지방자치단체의 대표 선수 또는 그 지방자치단체의 관할 구역에 주소를 둔 사람이 올림픽대회, 월드컵대회, 세계선수권대회, 아시아경기대 회, 전국체육대회, 시·도 체육대회에 선수로 출전하거나 그 밖에 그 지방 자치단체를 대표하여 선수로 출전하는 경우 해당 선수에게 격려금품 지 급 및 식사 제공'
                      '\n나. 공연단, 악단, 영화·연극단, 예술단, 학술단체, 사물놀이단, 합창단, 공공기관, 언론기관 및 시범단체 등이 해당 지방자치단체 관할 구역에서 공연 또는 행사를 하는 경우 현장 종사자에게 격려금품 지급 및 식사 제공'
                      '\n다. 지역사회를 위하여 자원봉사활동을 하는 자원봉사자·단체·센터에 대한 격 려금품 지급 및 식사 제공',
                  trimLines: 2,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' 자세히',
                  trimExpandedText: ' 접기',
                  moreStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  '4. 업무추진을 위한 각종 회의·간담회·행사'
                      '\n가. 해당 지방자치단체의 시책사업을 추진하고 있거나 추진을 완료한 사람으로서 사업추진에 기여한 공로가 있거나 원활한 사업추진을 위한 격려가 필요하여 사업추진 관계자에게 식사 제공'
                      '\n나. 해당 지방자치단체가 주최하는 회의 참석자에게 식사 제공. 이 경우 회의는 해당 지방자치단체의 사무 수행을 목적으로 하며 사전에 구체적인 회의 방법과 참석 범위를 정하여야 한다.'
                      '\n다. 해당 지방자치단체가 주관하는 직무와 직접 관련된 행사(「공직선거법」 제86조 제2항 제4호에 따라 제한되는 행사가 아닌 경우를 말한다) 관계자에게기념품 지급 및 식사 제공'
                      '\n라. 국제 교류 및 협력증진을 위하여 대사, 영사, 교민, 자매결연 지방자치단체관계자, 외교사절단 또는 외빈에게 선물 증정 및 식사 제공'
                      '\n마. 다른 지방자치단체, 국가기관, 공공단체, 민간단체, 학회, 협회 또는 해외기관 등이 벤치마킹, 교육, 현지조사·견학 등을 위하여 해당 지방자치단체를 방문 한 경우 그 방문자에게 기념품 지급 및 식사 제공',
                  trimLines: 2,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' 자세히',
                  trimExpandedText: ' 접기',
                  moreStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  '5. 현업(현장)부서 근무자에 대한 격려 및 지원'
                      '\n가. 군부대, 전투경찰대, 소방서(파출소 포함), 경찰서(지구대 등 포함), 우체국, 그 밖의 국가기관 및 다른 지방자치단체에서 종사하는 현업(현장) 근무자를 위하여 해당 기관 대표자에게 지급하는 격려금품'
                      '\n나. 해당 지방자치단체 관할구역에서 발생한 집단민원, 시위 등에 따라 현장에서 근무하는 종사자 등 관계자에게 격려금품 지급 및 식사 제공'
                      '\n다. 해당 지방자치단체 주관으로 관할구역에서 공공행사를 하는 경우 경비, 교통정리, 치안유지, 질서선도 등을 하는 경찰서(지구대 등 포함), 소방서 (파출소 포함), 군부대 또는 학교 등 유관 기관 현장 종사자에게 격려금품 지급 및 식사 제공',
                  trimLines: 2,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' 자세히',
                  trimExpandedText: ' 접기',
                  moreStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  '6. 소속 상근직원에 대한 격려 및 지원'
                      '\n가. 해당 지방자치단체 상근직원(사업소와 읍·면·동 직원을 포함한다. 이하 이 호에서 같다)이 부상을 당하거나 사망한 경우 유족에게 지급하는 위로금품'
                      '\n나. 소속 상근직원 중 공로가 많은 퇴직 공무원에게 격려금품 지급'
                      '\n다. 소속 상근직원 또는 소속 부서 중 전국단위 또는 시·도 및 시·군·구 단위 평가에서 우수한 성적으로 입상한 사람 또는 해당 부서에 대한 격려금품 지급'
                      '\n라. 소속 상근직원 중 수로원, 청사방호원, 주·정차단속원, 불법 광고물 단속원, 그린벨트 단속원, 하천감시원, 환경미화원, 병원선 및 불법어업 감시선 근무자, 운전원 등 현장 근무자에게 격려금품 지급'
                      '\n마. 소속 상근직원에게 업무추진에 대한 격려를 위한 식사 제공'
                      '\n바. 소속 상근직원 중 재난, 재해, 사건사고 등으로 비상 근무하는 직원에게 격려금품 지급 및 식사 제공'
                      '\n사. 해당 지방자치단체의 장 또는 간부공무원이 소속 기관 또는 하급기관(시·도의 경우 시·군·구를 포함한다)을 방문하는 경우 그 기관 상근직원에게 업무추진에 대한 격려를 위한 격려금품 지급 및 식사 제공'
                      '\n아. 본청 상근직원 및 차하급 기관 대표자에게 연말, 설, 추석 또는 그의 생일에 자체계획과 예산에 따라 지급하는 의례적인 선물',
                  trimLines: 2,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' 자세히',
                  trimExpandedText: ' 접기',
                  moreStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  '7. 업무추진 유관기관 협조'
                      '\n가. 해당 지방의회, 국가기관, 다른 지방자치단체, 교육기관, 군부대, 경찰서,금융기관, 그 밖의 공공기관 및 단체(이하 "유관기관”이라 한다)와의 공 동행사(「공직선거법」 제86조 제2항 제4호에 따라 제한되는 행사가 아닌 경우를 말한다), 회의, 업무협조를 위한 기념품 지급 및 식사 제공'
                      '\n나. 해당 지방자치단체 관할 구역 유관기관의 장이 퇴임 또는 전·출입하는 경우 그에게 의례적인 화환·화분·기념품 제공 또는 격려금품 지급'
                      '\n다. 각종 국경일의 기념식, 공공기관 이전 또는 공공시설의 개소에 따른 의례적인 수준의 화환·화분 제공 또는 내빈에게 기념품 지급',
                  trimLines: 2,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' 자세히',
                  trimExpandedText: ' 접기',
                  moreStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  '8. 직무수행과 관련된 통상적인 경비'
                      '\n 가. 내방객에게 제공하는 음료·다과재료의 구입 '
                      '\n 나. 축의·부의금품'
                      '\n   1) 지급대상 범위: 결혼 또는 사망'
                      '\n   2) 지급 대상자: 대상자 본인과 배우자, 본인과 배우자의 직계존비속'
                      '\n   3) 지급 명의자별 지급 대상자 구분'
                      '\n     가) 「공직선거법」 제113조 제1항에 해당되는 지방자치단체의 장 또는 후보자(후보자가 되고자 하는 사람을 포함한다)의 명의로 지급하는 경우'
                      '\n       - 소속 상근직원(본청 직원 또는 소속 차하급기관의 대표자만 해당한다)'
                      '\n     나) "가)” 외의 해당 지방자치단체 공무원 명의로 지급하는 경우'
                      '\n       - 소속 상근직원[본청·지방의회·사업소 소속 상근직원을 말하며, 시(제주특별자치도 행정시를 포함한다)·군·구(행정구를 포함한다)의 경우는읍·면·동 직원을 포함한다]'
                      '\n       - 해당 지방자치단체 지방의회 의원'
                      '\n       - 해당 지방자치단체 관할 구역 업무 유관기관의 임직원',
                  trimLines: 2,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' 자세히',
                  trimExpandedText: ' 접기',
                  moreStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  '9. 그 밖에 해당 지방자치단체의 직무수행과 관련하여 대상·방법·범위 등을 구체적으로 정한 조례 또는 법령에 미리 정하여진 경우',
                  trimLines: 1,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' 자세히',
                  trimExpandedText: ' 접기',
                  moreStyle:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}