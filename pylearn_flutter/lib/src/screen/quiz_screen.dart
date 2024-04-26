import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pylearn_flutter/src/components/question_controller.dart';
import 'package:pylearn_flutter/src/components/body.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen(this.quizId, this.duration, this.lst, this.randNum, {super.key});

  final String quizId;
  final int duration;
  List<bool> lst = [];
  int randNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Get.put(QuestionController(quizId, duration, lst, randNum));
              Get.find<QuestionController>().nextQuestion();
            },
            child: const Text("Пропустить вопрос"),
          ),
        ],
      ),
      body: Body(quizId, duration, lst, randNum),
    );
  }
}
