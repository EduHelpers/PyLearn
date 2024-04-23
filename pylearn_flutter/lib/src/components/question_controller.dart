import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:pylearn_flutter/src/screen/Questions.dart';
import 'score.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  String quizId;
  QuestionController(this.quizId);
  late AnimationController aniController;
  late Animation ani;
  late PageController _pageController;

  Animation? get animation => this.ani;
  PageController? get pageController => this._pageController;

  late final List<Question> _questions = sample_data[quizId] ?? [];
  List<Question> get questions {
    if (quizId == "Random") {
      this._questions.shuffle();
      return this._questions.sublist(0, 3);
    }

    return this._questions;
  }

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _correctAns = 0;
  int get correctAns => this._correctAns;

  int _selectedAns = 0;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    aniController =
        AnimationController(duration: Duration(seconds: 15), vsync: this);
    ani = Tween<double>(begin: 0, end: 1).animate(aniController)
      ..addListener(() {
        update();
      });

    aniController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    aniController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    aniController.stop();
    update();

    Future.delayed(Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 120), curve: Curves.ease);

      aniController.reset();

      aniController.forward().whenComplete(() {
        if (_questionNumber.value != questions.length) {
          nextQuestion();
        }
      });
    } else {
      Get.to(ScoreScreen(quizId: quizId));
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  void reset() {
    _questionNumber.value = 1;
    _numOfCorrectAns = 0;
    _isAnswered = false;
    _selectedAns = 0;
    aniController.reset();
    aniController.forward().whenComplete(nextQuestion);
  }
}
