import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:korelectioninfo/constant.dart';

class UnionTwo extends StatefulWidget {

  @override
  _UnionTwoState createState() => _UnionTwoState();
}

class _UnionTwoState extends State<UnionTwo> {
  final GlobalKey<ExpansionTileCardState> cardAA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardBB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardCC = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardDD = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardEE = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardFF = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardGG = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('실전 사례',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Jua'
          ),),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: ExpansionTileCard(
              key: cardAA,
              expandedTextColor: Colors.yellowAccent,
              // leading: CircleAvatar(
              //     child: Text('1')),
              title: Text('선거운동이란 당선되거나 되게 하거나 되지 못하게 하기 위한 행위임',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'NanumGothic',
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
                ),
              subtitle: Text('\n선거운동으로 보지 않는 행위'
                  '\n1. 선거에 관한 단순한 의견 개진 및 의사표시'
                  '\n2. 입후보와 선거운동을 위한 준비행위',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue),
              ),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  // alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Text(
                    '선거운동 개념은 공선법상의 선거운동과 동일하므로 선거인을 기준으로 명백히 선거운동으로 인식하는지가 선거운동에 해당하지는 여부를 결정하는 기준임',
                      style: TextStyle(
                          fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: ExpansionTileCard(
              key: cardBB,
              expandedTextColor: Colors.yellowAccent,
              // leading: CircleAvatar(
              //     child: Text('1')),
              title: Text('선거운동 방법',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'NanumGothic',
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '\n선거공보'
                '\n1. 선거벽보'
                '\n2. 어깨띠, 윗옷, 소품'
                '\n3. 전화, 문자메시지'
                '\n4. 정보통신망'
                '\n5. 명함'
                '\n선거일 후보자 소개 및 소견 발표(총회 선발의 경우만 가능)',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue),
              ),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  // alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Text(
                      '선거운동은 선거일을 제외한 13일간만 가능하고 선거운동기간이 아닌 때에 선거운동을 하는 경우 사전선거운동으로 처벌됨',
                      style: TextStyle(
                          fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: ExpansionTileCard(
              key: cardCC,
              expandedTextColor: Colors.yellowAccent,
              // leading: CircleAvatar(
              //     child: Text('1')),
              title: Text('선거공보',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'NanumGothic',
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '\n후보자는 선관위가 공고한 수량을 8면(27*19) 이내로 작성하여 지정 장소에 제출함'
                    '\n1. 공보 맨 앞면에는 선거명, 후보자 기호, 성명을 반드시 작성함'
                    '\n2. 선거운동에 필요한 자신의 홍보사항을 기재함'
                    '\n3. 학력의 경우에는 공선법에서 요구하는 정규학력과 달리 증명이 되는 유사학력도 게재가 가능'
                    '\n4. 선거인은 공보나 벽보에 경력, 학력, 학위, 상벌에 관해 거짓 게재를 이유로 이의제기를 할 수 있으며 사안에 따라 고발될 수 있음',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue),
              ),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  // alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Text(
                      '당락을 위해 허위 사실을 공표하거나 후보자 등을 비방하는 경우 허위사실 공표죄나 비방죄로 처벌 받을 수 있음',
                      style: TextStyle(
                          fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: ExpansionTileCard(
              key: cardDD,
              expandedTextColor: Colors.yellowAccent,
              // leading: CircleAvatar(
              //     child: Text('1')),
              title: Text('선거벽보',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'NanumGothic',
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '\n후보자는 선관위가 공고한 수량을 1종(53*38)으로 작성하여 지정 장소에 제출함'
                    '\n1. 선거운동에 필요한 자신의 홍보사항을 기재함'
                    '\n2. 후보자는 첩부된 벽보가 훼손된 경우 공고 수량 범위 안에서 벽보 위에 덧붙이는 방법으로 보완할 수 있음',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue),
              ),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  // alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Text(
                      '공보와 같이 당락을 위해 허위 사실을 공표하거나 후보자 등을 비방하는 경우 허위사실 공표죄나 비방죄로 처벌 받을 수 있음',
                      style: TextStyle(
                          fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: ExpansionTileCard(
              key: cardEE,
              expandedTextColor: Colors.yellowAccent,
              // leading: CircleAvatar(
              //     child: Text('1')),
              title: Text('어께띠, 윗옷, 소품',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'NanumGothic',
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '\n후보자가 어께띠나 윗옷을 착용하거나 소품을 이용하여 선거운동이 가능함'
                    '\n1. 어께띠 대신 윗옷에 홍보내용을 프린팅하여 착용하는 방법이 현장에서 실용성이 높음'
                    '\n2. 착용은 반드시 몸에 걸처야 하고 소품은 소지만 하고 있어도 됨에 유의함',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue),
              ),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  // alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Text(
                      '소품은 자신의 힘으로 휴대 가능할 정도의 소규모 물품을 말하므로 후보의 상황에 적합한 소품을 미리 생각해 두자',
                      style: TextStyle(
                          fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: ExpansionTileCard(
              key: cardFF,
              expandedTextColor: Colors.yellowAccent,
              // leading: CircleAvatar(
              //     child: Text('1')),
              title: Text('전화, 문자메시지',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'NanumGothic',
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '\n후보자가 전화로 직접 통화하거나 문자메시지로 전송할 수 있음'
                    '\n1. 전화 통화나 문자 전송은 사생활의 평온을 보장하기 위해 오전 7시부터 어후 10시까지만 가능함'
                    '\n2. 문자메시지는 공직선거와 달리 횟수 제한이나 신고를 할 필요가 없음',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue),
              ),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  // alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Text(
                      '후보자가 아닌 사람이 전화나 문자로 선거운동을 하지 않도록 하고 그 내용도 허위사실이나 비방이 포함되지 않도록 주의하여야 함',
                      style: TextStyle(
                          fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: ExpansionTileCard(
              key: cardGG,
              expandedTextColor: Colors.yellowAccent,
              // leading: CircleAvatar(
              //     child: Text('1')),
              title: Text('정보통신망',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'NanumGothic',
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '\n후보자가 인터넷 홈페이지나 전자우편을 이용하여 자신이 선거운동 정보를 게시하거나 전송할 수 있음'
                    '\n1. 위탁 단체가 개설하여 운영하는 인터넷 홈페이지 게시판이나 대화방 등에 게시'
                    '\n2. 전자우편(이메일, 카톡 등 SNS)를 이용하여 전송',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue),
              ),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  // alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Text(
                      '정보통신망은 전화나 문자메시지와는 구별되는 것으로 특히 인터넷 홈페이지는 당해 위탁 단체가 운영하는 매체인지 반드시 확인하도록 합니다.',
                      style: TextStyle(
                          fontSize: 17),
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