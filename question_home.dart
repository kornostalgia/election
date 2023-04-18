import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korelectioninfo/exam/question_screen.dart';
import 'package:shimmer/shimmer.dart';

class QuestionHome extends StatefulWidget {
  @override
  _QuestionHomeState createState() => _QuestionHomeState();
}

class _QuestionHomeState extends State<QuestionHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(children: [
          Image.asset('assets/images/future.jpeg'),
          SafeArea(
            child: Column(
              children: [
                Center(
                  child: Shimmer.fromColors(
                    child: Text(
                      "     공선법 기출 문제로"
                      "\n출제 경향을 파악해 보세요",
                      style: TextStyle(
                        fontFamily: 'Jua',
                        fontSize: 20,
                      ),
                    ),
                    baseColor: Color(0xffe80426),
                    highlightColor: Color(0xffe8bb05),
                  ),
                ),
                Spacer(),
                // 1/6
                InkWell(
                  onTap: () => Get.to(QuizScreen()),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: EdgeInsets.all(10), // 15
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Center(
                      child: Text(
                        "2021년도 국가직 9급 공선법 기출문제",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       InkWell(
                //         onTap: () => Get.to(QuizScreen()),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 0.4,
                //           padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                //           decoration: BoxDecoration(
                //             gradient: kPrimaryGradient,
                //             borderRadius: BorderRadius.all(Radius.circular(12)),
                //           ),
                //           child: Text(
                //             "Lets Start Quiz",
                //           ),
                //         ),
                //       ),
                //       InkWell(
                //         onTap: () => Get.to(QuizScreen()),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 0.4,
                //           padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                //           decoration: BoxDecoration(
                //             gradient: kPrimaryGradient,
                //             borderRadius: BorderRadius.all(Radius.circular(12)),
                //           ),
                //           child: Text(
                //             "Lets Start Quiz",
                //           ),
                //         ),
                //       ),
                //     ]),
                // Spacer(),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       InkWell(
                //         onTap: () => Get.to(QuizScreen()),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 0.4,
                //           padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                //           decoration: BoxDecoration(
                //             gradient: kPrimaryGradient,
                //             borderRadius: BorderRadius.all(Radius.circular(12)),
                //           ),
                //           child: Text(
                //             "Lets Start Quiz",
                //           ),
                //         ),
                //       ),
                //       InkWell(
                //         onTap: () => Get.to(QuizScreen()),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 0.4,
                //           padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                //           decoration: BoxDecoration(
                //             gradient: kPrimaryGradient,
                //             borderRadius: BorderRadius.all(Radius.circular(12)),
                //           ),
                //           child: Text(
                //             "Lets Start Quiz",
                //           ),
                //         ),
                //       ),
                //     ]),
                // Spacer(),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       InkWell(
                //         onTap: () => Get.to(QuizScreen()),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 0.4,
                //           padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                //           decoration: BoxDecoration(
                //             gradient: kPrimaryGradient,
                //             borderRadius: BorderRadius.all(Radius.circular(12)),
                //           ),
                //           child: Text(
                //             "Lets Start Quiz",
                //           ),
                //         ),
                //       ),
                //       InkWell(
                //         onTap: () => Get.to(QuizScreen()),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 0.4,
                //           padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                //           decoration: BoxDecoration(
                //             gradient: kPrimaryGradient,
                //             borderRadius: BorderRadius.all(Radius.circular(12)),
                //           ),
                //           child: Text(
                //             "Lets Start Quiz",
                //           ),
                //         ),
                //       ),
                //     ]),
                // Spacer(),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       InkWell(
                //         onTap: () => Get.to(QuizScreen()),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 0.4,
                //           padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                //           decoration: BoxDecoration(
                //             gradient: kPrimaryGradient,
                //             borderRadius: BorderRadius.all(Radius.circular(12)),
                //           ),
                //           child: Text(
                //             "Lets Start Quiz",
                //           ),
                //         ),
                //       ),
                //       InkWell(
                //         onTap: () => Get.to(QuizScreen()),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 0.4,
                //           padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                //           decoration: BoxDecoration(
                //             gradient: kPrimaryGradient,
                //             borderRadius: BorderRadius.all(Radius.circular(12)),
                //           ),
                //           child: Text(
                //             "Lets Start Quiz",
                //           ),
                //         ),
                //       ),
                //     ]),
                // Spacer(),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       InkWell(
                //         onTap: () => Get.to(QuizScreen()),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 0.4,
                //           padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                //           decoration: BoxDecoration(
                //             gradient: kPrimaryGradient,
                //             borderRadius: BorderRadius.all(Radius.circular(12)),
                //           ),
                //           child: Text(
                //             "Lets Start Quiz",
                //           ),
                //         ),
                //       ),
                //       InkWell(
                //         onTap: () => Get.to(QuizScreen()),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 0.4,
                //           padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                //           decoration: BoxDecoration(
                //             gradient: kPrimaryGradient,
                //             borderRadius: BorderRadius.all(Radius.circular(12)),
                //           ),
                //           child: Text(
                //             "Lets Start Quiz",
                //           ),
                //         ),
                //       ),
                //     ]),
                Spacer(),
                Spacer(flex: 2),
                // it will take 2/6 spaces
              ],
            ),
          )
        ]));
  }
}
