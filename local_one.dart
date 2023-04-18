import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korelectioninfo/local_govern/custom_card.dart';
import 'package:korelectioninfo/local_govern/detail_five.dart';
import 'package:korelectioninfo/local_govern/detail_four.dart';
import 'package:korelectioninfo/local_govern/detail_one.dart';
import 'package:korelectioninfo/local_govern/detail_three.dart';
import 'package:korelectioninfo/local_govern/detail_two.dart';

class LocalOne extends StatelessWidget {
  final double appBarHeight = AppBar().preferredSize.height;
  final double navBarHeight = 100.0;
  final double extendedAppBarHeight = 50.0;
  final double topCardHeight = 175.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text(
            '공직선거법상 지방자치단체의 활동 기준',
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent,
                fontFamily: 'CuteFont')
        ),
      ),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Get.to(() => DetailOne());
                    },
                    child: Container(
                        height: 130.0,
                        width: MediaQuery.of(context).size.width,
                        child: customCard("지자체의 각종 행사의 개최, 후원의 제한", "공선법 제86조 제2항 제4호",
                            Icons.groups, "IMG_0314")),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Get.to(() => DetailTwo());
                        },
                        child: Container(
                            height: ((MediaQuery.of(context).size.height) -
                                    appBarHeight -
                                    navBarHeight -
                                    extendedAppBarHeight -
                                    topCardHeight) *
                                .60,
                            width: MediaQuery.of(context).size.width * .5,
                            child: customCard("지자체의 홍보물 발행, 배부의 제한",
                                "공선법 제86조 제5항", Icons.receipt, "IMG_0330")),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => DetailThree());
                        },
                        child: Container(
                          height: ((MediaQuery.of(context).size.height) -
                                  appBarHeight -
                                  navBarHeight -
                                  extendedAppBarHeight -
                                  topCardHeight) *
                              .80,
                          width: MediaQuery.of(context).size.width * .5,
                          child: customCard("지방자치단체장의 행사 참석 제한", "공선법 제86조 제2항",
                              Icons.event_seat, "IMG_0331"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Get.to(() => DetailFour());
                        },
                        child: Container(
                            height: ((MediaQuery.of(context).size.height) -
                                    appBarHeight -
                                    navBarHeight -
                                    extendedAppBarHeight -
                                    topCardHeight) *
                                .80,
                            width: MediaQuery.of(context).size.width * .5,
                            child: customCard("지방자치단체장의 광고 출연 금지", "공선법 제86조 제7항",
                                Icons.live_tv, "IMG_0332")),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => DetailFive());
                        },
                        child: Container(
                            height: ((MediaQuery.of(context).size.height) -
                                    appBarHeight -
                                    navBarHeight -
                                    extendedAppBarHeight -
                                    topCardHeight) *
                                .60,
                            width: MediaQuery.of(context).size.width * .5,
                            child: customCard("지방자치단체의 기부행위 제한", "제112조 제2항 제4호",
                                Icons.attach_money, "IMG_0333")),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
