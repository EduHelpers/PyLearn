import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'question_controller.dart';
import 'package:pylearn_flutter/src/screen/Questions.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard(
      this.question, this.quizId, this.duration, this.lst, this.randNum,
      {super.key});

  final String quizId;
  final Question question;
  final int duration;
  List<bool> lst = [];
  int randNum = 0;

  @override
  Widget build(BuildContext context) {
    QuestionController controller =
        Get.put(QuestionController(quizId, duration, lst, randNum));
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: const Color(0xFF101010),
                fontSize: screenSize.width * 0.05),
          ),
          const SizedBox(height: 10.0),
          ...List.generate(
            question.options.length,
            (index) => Option(
                question.options[index],
                index,
                () => controller.checkAns(question, index),
                quizId,
                duration,
                lst,
                randNum),
          ),
        ],
      ),
    );
  }
}
