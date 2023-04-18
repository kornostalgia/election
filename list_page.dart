import 'package:flutter/material.dart';

class ListPop extends StatefulWidget {
  @override
  _ListPopState createState() => _ListPopState();
}

class _ListPopState extends State<ListPop> {
  var numberList = ["1", "2", "3", "4"];

  var titleList = [
    "선거권과 피선거권",
    "의원 정수",
    "선거인명부",
    "선거일과 선거기간",
  ];

  var descList = [
    "선거사무소의 회계책임자에게 공선법 제263조(선거비용의 초과지출로 인한 당선무효)에 규정된 죄와 제265조(선거사무장등의 선거범죄로 인한 당선무효)에 규정된 죄의 경합범으로 징역형 또는 300만원 이상의 벌금을 선고하는 경우 이를 분리하여 선고할 수 없다.",
    "시도의원지역구의 명칭과 관할구역은 법률로 정하고 자치구시군의원지역구의 명칭과 관할구역 및 의원정수는 시도조레로 정하되 최소정수는 시도의원이 21명이고 자치구시군의원은 7명임 ",
    "지방선거의 선거권이 있는 외국인은 거소투표신고가 가능하고 신체에 중대한 장애가 있어 거동할 수 없는 장애인복지법에 등록된 장애인에게 구시군의 장은 거소투표안내문과 신고서를 발송하여야 하고 등록되지 않은 신체에 중대한 장애로 거동할 수 없는 자는 통리반장의 확인을 거쳐 선관위에 거소투표를 신청할 수 있으며, 구시군으 장은 거소투표신고인명부를 투표구별 2통씩 작성하여야 한다.",
    "재보궐선거 선거일의 전일이나 그 다음날이 공휴일 또는 한식일인 경우 그 다음주의 수요일에 실시하고 지방의원의 증원선거와 지자체의 설치, 폐지, 분할, 합병에 따른 지자체장 선거일은 모두 수요일이며 대통령 궐위 선거와 지역구 국회의원 보궐선거는 중앙선관위가 그 사유를 통지받은 통지 받은 날에 그 실시사유가 확정된다.",
  ];

  var addList = [
    "맞는 지문 (공선법 제18조 제3항)",
    "틀린 지문",
    "틀린 지문",
    "틀린 지문",
  ];

  var add2List = [
    "선거사무소의 회책 등에게 공선법 제263조 및 제265조에 규정된 죄와 공선법 제18조 제1항 제3조에 규정된 죄의 경합범으로 징역형 또는 300만원 이상의 벌금형을 선고하는 때에 분리선고하도록 규정하고 있음",
    "시도의원은 지역구 19명과 비례 3명이 최소정수이므로 22명이고, 자치구시군의원은 지역구와 비례를 포함하여 7명입니다.",
    "외국인은 선거권자라도 거소투표신고를 할 수 없고 등록된 장애인이 아닌 자는 통리반장의 확인을 거쳐 구시군의 장에게 거소투표신청을 할 수 있으며, 구시군의 장은 거소투표신고인명부를 읍면동별로 2통씩 작성하여야 함",
    "선거일이 민속절이나 공휴일이거나 선거일 전일이나 다음날이 공휴일인 경우에 그 다음주 수요일에 실시한다. 재보궐과 증원선거는 4월 중 첫번째 수요일에 실시하나 지자체의 폐치분합에 따른 선거는 선관위원장이 지자체장과 협의하여 정하는 날에 실시하므로 수요일에 실시하지 않을 수 있으며, 대통령의 궐위 선거는 사망이나 탄핵이 확정되면 그 실시사유가 확정되는 것임",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "오답 노트(틀린 지문 찾아내기)",
          style: TextStyle(
            color: Colors.red,
            fontFamily: 'Jua',
            fontSize: 15,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.black12,
      ),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialogFunc(context, addList[index], add2List[index]);
            },
            child: Card(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              numberList[index] + '.',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              titleList[index],
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Text(
                            descList[index],
                            style: TextStyle(
                                fontSize: 17, color: Colors.grey[500]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

showDialogFunc(context, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black45,
            ),
            padding: EdgeInsets.all(15),
            height: 320,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 10,
                      style: TextStyle(fontSize: 18, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
