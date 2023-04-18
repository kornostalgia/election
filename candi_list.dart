
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/president/mind_one.dart';
import 'package:korelectioninfo/president/minju_day.dart';
import 'package:korelectioninfo/president/power_day.dart';
import 'package:korelectioninfo/president/profile_page.dart';
import 'package:korelectioninfo/president/schedule_page.dart';
import 'package:korelectioninfo/president/support_chart.dart';

class CandiList extends StatefulWidget {
  @override
  _CandiListState createState() => _CandiListState();
}

class _CandiListState extends State<CandiList> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0xff0c0f14),
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: secondaryColor,
        title: Text(
          '제20대 대통령선거 주요 예비후보자 현황',
          style: TextStyle(
            fontFamily: 'Jua',
            fontSize: 17,
          ),
        ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.date_range_outlined,
                ),
                onPressed: () {
                  Get.to(SchedulePage());
                })
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                top: defaultPadding,
                left: defaultPadding),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => MinjuDay());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: MediaQuery.of(context).size.height * 0.08,
                      padding: EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '더민주 경선일정',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'NanumGothic',
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '보러가기',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.redAccent
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  InkWell(
                    onTap: () {
                      Get.to(() => PowerDay());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: MediaQuery.of(context).size.height * 0.08,
                      padding: EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '국힘 경선일정',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'NanumGothic',
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            ' 보러가기',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.redAccent
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultPadding),
              LineChartSample1(),
              SizedBox(height: defaultPadding),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.33,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage('http://info.nec.go.kr/photo_20220309/Gsg1/Hb100138363/gicho/100138363.JPG'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '이낙연(더민주)',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '69세, 제21대 국회의원',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '서울대학교 법학과 졸업',
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
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.33,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage('http://info.nec.go.kr/photo_20220309/Gsg1/Hb100138364/gicho/100138364.JPG'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '정세균(더민주)',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '71세, (전)국무총리',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '경희대학원 졸업(경영학 박사)',
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
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.33,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage('http://info.nec.go.kr/photo_20220309/Gsg1/Hb100138359/gicho/100138359.JPG'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '유승민(국민의힘)',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '64세, (전)국회의원',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '미국 위스콘신(매디슨)대학교 경제학과 졸업(경제학박사)',
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
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.33,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage('http://info.nec.go.kr/photo_20220309/Gsg1/Hb100138362/gicho/100138362.JPG'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '윤석열(국민의힘)',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '61세, (전)검찰총장',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '서울대학교 대학원졸업(법학석사)',
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
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.33,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage('http://info.nec.go.kr/photo_20220309/Gsg1/Hb100138366/gicho/100138366.JPG'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '황교안(국민의힘)',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '64세, (전)국무총리',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '성균관대학교 대학원 졸업(법학 석사)',
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
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.33,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage('http://info.nec.go.kr/photo_20220309/Gsg1/Hb100138368/gicho/100138368.JPG'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '추미애(더민주)',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '63세, (전)법무부장관',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '한양대 법학과 졸업',
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
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.33,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage('http://info.nec.go.kr/photo_20220309/Gsg1/Hb100138370/gicho/100138370.JPG'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '김두관(더민주)',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '62세, 제21대 국회의원',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '동아대학교 정치외교학과 졸업',
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
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.33,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage('http://info.nec.go.kr/photo_20220309/Gsg1/Hb100138367/gicho/100138367.JPG'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '최재형(국민의힘)',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '65세, (전)감사원장',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '서울대학교 법학과 졸업',
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
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.33,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage('http://info.nec.go.kr/photo_20220309/Gsg1/Hb100138369/gicho/100138369.JPG'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '원희룡(국민의힘)',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '58세, (전)제주도지사',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '서울대학교 공법학과 졸업',
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
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.33,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage('http://info.nec.go.kr/photo_20220309/Gsg1/Hb100138371/gicho/100138371.JPG'),
                                  // 'https://www.nec.go.kr/static/images/portal/sub/img_signature05.gif'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '홍준표(국민의힘)',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '67세, 제21대 국회의원',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '고려대학교 행정학과 졸업',
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
            ]),
          ),
        ));
  }
}
