
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/exam/answer_json.dart';
import 'package:korelectioninfo/exam/question_card.dart';
import 'package:korelectioninfo/exam/question_controller.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // actions: [
        //   FlatButton(
        //       onPressed: _controller.nextQuestion,
        //       child: Text("해설 보기",
        //         style: TextStyle(
        //           fontSize: 20,
        //           color: Colors.green,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       )
        //   ),
        // ],
      ),
      body: QuestionBody(),
    );
  }
}

class QuestionBody extends StatefulWidget {

  @override
  _QuestionBodyState createState() => _QuestionBodyState();
  }

  class _QuestionBodyState extends State<QuestionBody> {

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());

//    List<Answer> answers = allAnswers;

    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Question ${_questionController.questionNumber.value}",
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Jua',
                        fontSize: 20,
                      ),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                        ),
                      ],
                    ),
                  ),
                )),
            Divider(
                height: 30,
                thickness: 2),
            Expanded(
                child: PageView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
              onPageChanged: _questionController.updateTheQnNum,
              itemCount: _questionController.questions.length,
              itemBuilder: (context, index) => QuestionCard(
                question: _questionController.questions[index],
              ),
            )),
            SizedBox(height: kDefaultPadding),
            // SingleChildScrollView(
            //   child: Padding(
            //     padding: const EdgeInsets.all(kDefaultPadding),
            //     child: Container(
            //       width: double.infinity,
            //       height: 35,
            //       decoration: BoxDecoration(
            //         border: Border.all(color: Color(0xFF3F4768), width: 3),
            //         borderRadius: BorderRadius.circular(50),
            //       ),
            //     ),
            //   ),
            // ),
            ]),
            // DraggableScrollableSheet(
            //   initialChildSize: 0.1,
            //     maxChildSize: 0.5,
            //     minChildSize: 0.1,
            //     builder:(context, controller) => ClipRRect(
            //       borderRadius: BorderRadius.circular(12),
            //       child: Container(
            //         color: Colors.white70,
            //         child: ListView.builder(
            //           controller: controller,
            //             itemCount: answers.length,
            //             itemBuilder: (context, index) {
            //             final answer = answers[index];
            //
            //             return buildAnswer(answer);
            //             }),
            //       ),
            //     ))
          ],
        ),
    );
  }

  Widget buildAnswer(Answer answer) => ListTile(
    title: Column(
      children: [
        Text(
          answer.annum.toString(),
          style: TextStyle(
            color: Colors.black),
        ),
        Text(
          answer.answer,
          style: TextStyle(
              color: Colors.black),
        ),
      ],
    ),
  );
}
