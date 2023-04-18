
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korelectioninfo/congress/congress_home.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/contents/calendar_page.dart';
import 'package:korelectioninfo/contents/countdown_view.dart';
import 'package:korelectioninfo/cost/cost_home.dart';
import 'package:korelectioninfo/exam/exam_home.dart';
import 'package:korelectioninfo/law_info/law_home.dart';
import 'package:korelectioninfo/local_govern/local_home.dart';
import 'package:korelectioninfo/president/candi_list.dart';
import 'package:korelectioninfo/talk_on/talk_on_home.dart';
import 'package:korelectioninfo/union/union_home.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: secondaryColor,
          centerTitle: true,
          title: Shimmer.fromColors(
            child: Text(
              '선거로2 방문을 환영합니다.',
              style: TextStyle(
                fontFamily: 'Jua',
                fontSize: 20,
              ),
            ),
            baseColor: Color(0xffa4e804),
            highlightColor: Color(0xff615c5c),
          ),
        ),
        body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Welcome to",
                          style: TextStyle(
                              fontFamily: 'NanumPenScript',
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.yellowAccent)),
                      TextSpan(
                          text: " Election Info",
                          style: TextStyle(
                              fontFamily: 'NanumPenScript',
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrangeAccent)),
                    ])),
            ElevatedButton(
              onPressed: () {
                Get.to(() => TalkOnHome());
              },
              child: Text('QnA',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'NanumGothic',
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ]),
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.35,
          width: MediaQuery.of(context).size.width * 9,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Container(
              padding: EdgeInsets.all(5),
              height: 130,
              width: MediaQuery.of(context).size.width * 6,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: CountdownView()),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 150,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/gs3.png'),
                        fit: BoxFit.fill)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/gs4.png'),
                        fit: BoxFit.fill)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/gs5.png'),
                        fit: BoxFit.fill)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/gs7.png'),
                        fit: BoxFit.fill)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.44,
              height: MediaQuery.of(context).size.height * 0.285,
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(defaultPadding * 0.75),
                        width: MediaQuery.of(context).size.width * 0.29,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage('assets/icons/11.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Get.to(() => CandiList());
                          },
                          child: Icon(Icons.more_vert, color: Colors.white54))
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Text(
                    '대통령선거(2022. 3. 9)',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'NanumGothic',
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '대선일정, 예비후보, 경선일정',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            SizedBox(width: defaultPadding),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  height: MediaQuery.of(context).size.height * 0.13,
                  padding: EdgeInsets.all(defaultPadding * 0.7),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(defaultPadding * 0.5),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                image: AssetImage('assets/icons/22.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                Get.to(() => CalendarPage());
                              },
                              child:
                              Icon(Icons.more_vert, color: Colors.white54))
                        ],
                      ),
                      Text(
                        '지방선거(2022. 6. 1)',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'NanumGothic',
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrangeAccent),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: defaultPadding),
                Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  height: MediaQuery.of(context).size.height * 0.13,
                  padding: EdgeInsets.all(defaultPadding * 0.7),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(defaultPadding * 0.5),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage('assets/icons/33.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                Get.to(() => CongressHome());
                              },
                              child:
                              Icon(Icons.more_vert, color: Colors.white54))
                        ],
                      ),
                      Text(
                        '국회의원선거(2020. 4. 13)',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'NanumGothic',
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrangeAccent),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: defaultPadding),
        Container(
          width: MediaQuery.of(context).size.width * 9,
          height: MediaQuery.of(context).size.height * 0.15,
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(defaultPadding * 0.75),
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius:
                        const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage('assets/icons/44.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '정치관계법',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: defaultPadding / 2),
                        Text(
                          '공직선거법, 정치자금법, 정당법',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '최신 개정 사항 반영',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(() => LawHome());
                        },
                        child: Icon(Icons.more_vert, color: Colors.white54))
                  ],
                ),
              ]),
        ),
        SizedBox(height: defaultPadding),
        Row(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.44,
                  height: MediaQuery.of(context).size.height * 0.13,
                  padding: EdgeInsets.all(defaultPadding * 0.7),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(defaultPadding * 0.5),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                image: AssetImage('assets/icons/55.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                Get.to(() => LocalHome());
                              },
                              child:
                              Icon(Icons.more_vert, color: Colors.white54))
                        ],
                      ),
                      Text(
                        '지방자치단체와 선거법',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'NanumGothic',
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrangeAccent),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: defaultPadding),
                Container(
                  width: MediaQuery.of(context).size.width * 0.44,
                  height: MediaQuery.of(context).size.height * 0.13,
                  padding: EdgeInsets.all(defaultPadding * 0.7),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(defaultPadding * 0.5),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                image: AssetImage('assets/icons/66.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                Get.to(() => UnionHome());
                              },
                              child:
                              Icon(Icons.more_vert, color: Colors.white54))
                        ],
                      ),
                      Text(
                        '조합장선거(위탁선거)',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'NanumGothic',
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrangeAccent),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: defaultPadding),
            Container(
              width: MediaQuery.of(context).size.width * 0.43,
              height: MediaQuery.of(context).size.height * 0.285,
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(defaultPadding * 0.75),
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage('assets/icons/77.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Get.to(() => ExamHome());
                          },
                          child: Icon(Icons.more_vert, color: Colors.white54))
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Text(
                    '수험용(공무원시험)',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'NanumGothic',
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '기출문제 분석, 조문 해설, 판례',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Container(
          width: MediaQuery.of(context).size.width * 9,
          height: MediaQuery.of(context).size.height * 0.15,
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(defaultPadding * 0.75),
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius:
                        const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage('assets/icons/88.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '선거비용',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: defaultPadding / 2),
                        Text(
                          '선거비용 항목에 대한 상세설명',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '선거비용제한액과 산정방법 등',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(() => CostHome());
                        },
                        child: Icon(Icons.more_vert, color: Colors.white54))
                  ],
                ),
              ]),
        ),
        SizedBox(height: defaultPadding),
//        _listViewProducts(),
      ]),
    );
  }
}

// Widget _listViewProducts() {
//   return GetBuilder<HomeViewModel>(
//     builder: (controller) => Container(
//       height: 130,
//       child: ListView.separated(
//           itemCount: controller.productModel.length,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 Get.to(DetailsView(
//                   model: controller.productModel[index],
//                 ));
//               },
//               child: Container(
//                 child: Column(
//                   children: [
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundColor: Colors.red,
//                       child: CircleAvatar(
//                         radius: 120,
//                         backgroundImage:
//                         NetworkImage(controller.productModel[index].image),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     CustomText(
//                       text: controller.productModel[index].name,
//                       color: Colors.orange,
//                       alignment: Alignment.bottomLeft,
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//           separatorBuilder: (context, index) => SizedBox(
//             width: 20,
//           )),
//     ),
//   );
// }
