import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pylearn_flutter/src/components/question_controller.dart';
import 'package:pylearn_flutter/src/components/body.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({required this.quizId});

  final String quizId;

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
              Get.put(QuestionController(quizId));
              Get.find<QuestionController>().nextQuestion();
            },
            child: const Text("Пропустить вопрос"),
          ),
        ],
      ),
      body: Body(quizId: quizId),
    );
  }
}
