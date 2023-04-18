import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/exam/question_controller.dart';
import 'package:korelectioninfo/exam/question_data.dart';
import 'package:korelectioninfo/exam/question_option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {

   QuestionController _controller = Get.put(QuestionController());

    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(question.question,
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'NanumGothic',
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent),
              ),
            SizedBox(height: kDefaultPadding / 2),
            ...List.generate(
              question.options.length,
                  (index) => Option(
                index: index,
                text: question.options[index],
                press: () => _controller.checkAns(question, index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}