import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pylearn_flutter/src/components/option.dart';
import 'package:pylearn_flutter/src/screen/Questions.dart';
import 'score.dart';

class QuestionController extends GetxController
    // ignore: deprecated_member_use
    with
        // ignore: deprecated_member_use
        SingleGetTickerProviderMixin {
  String quizId;
  int duration;
  List<bool> lst;
  int randNum;
  QuestionController(this.quizId, this.duration, this.lst, this.randNum);
  late AnimationController animationController;
  late Animation ani;
  late PageController _pageControl;

  Animation? get animation => ani;
  PageController? get pageControl => _pageControl;

  late final List<Question> _questions = sample_data[quizId] ?? [];
  List<Question> get questions {
    int l = 0;
    if (quizId == "Random") {
      for (String i in sample_data.keys) {
        if (lst[l] == true) {
          for (Question j in sample_data[i]!) {
            _questions.add(j);
          }
        }
        l++;
      }
      _questions.shuffle();
      return _questions.sublist(0, min(randNum, _questions.length));
    }

    return _questions;
  }

  bool _isAns = false;
  bool get isAnswered => _isAns;
  int _corAns = 0;
  int get correctAns => _corAns;
  int _selectedAns = 0;
  int get selectedAns => _selectedAns;
  final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;
  int _numerOfCorrectAns = 0;
  int get numOfCorrectAns => _numerOfCorrectAns;

  @override
  void onInit() {
    animationController =
        AnimationController(duration: Duration(seconds: duration), vsync: this);
    ani = Tween<double>(begin: 0, end: 1).animate(animationController)
      ..addListener(() {
        update();
      });

    animationController.forward();
    _pageControl = PageController();
    animationController.forward().whenComplete(nextQuestion);
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    animationController.dispose();
    _pageControl.dispose();
  }

  void checkAns(Question question, int index) {
    _isAns = true;
    _corAns = question.answer;
    _selectedAns = index;

    if (_corAns == _selectedAns) _numerOfCorrectAns++;

    animationController.stop();
    update();

    // Future.delayed(const Duration(seconds: 1), () {
    //   nextQuestion();
    // });
  }

  void nextQuestion() {
    if (_questionNumber.value != questions.length) {
      _isAns = false;
      _pageControl.nextPage(
          duration: const Duration(milliseconds: 120), curve: Curves.ease);

      animationController.reset();

      animationController.forward().whenComplete(() {
        if (_questionNumber.value != questions.length) {
          nextQuestion();
        }
      });
    } else {
      Get.to(ScoreScreen(quizId, duration, lst, randNum));
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  void reset() {
    _questionNumber.value = 1;
    _numerOfCorrectAns = 0;
    _isAns = false;
    _selectedAns = 0;
    animationController.reset();
    animationController.forward().whenComplete(nextQuestion);
  }
}
