import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:korelectioninfo/exam/question_home.dart';
import 'package:korelectioninfo/exam/question_data.dart';

class QuestionController extends GetxController {

  // late AnimationController _animationController;
  // late Animation _animation;
  // Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = quizData
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answerIndex: question['answerIndex']),
  ).toList();

  List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    // _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answerIndex;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

      update();

      Future.delayed(Duration(seconds: 3), () {
        nextQuestion();
      });
    }

    void nextQuestion() {
      if (_questionNumber.value != _questions.length) {
        _isAnswered = false;
        _pageController.nextPage(
            duration: Duration(milliseconds: 250), curve: Curves.ease);

        // _animationController.reset();
        // _animationController.forward().whenComplete(nextQuestion);
      } else {
        Get.to(QuestionHome());
      }
    }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
  }