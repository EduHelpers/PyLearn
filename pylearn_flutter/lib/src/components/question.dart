import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'question_controller.dart';
import 'package:pylearn_flutter/src/screen/Questions.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.question, required this.quizId});

  final String quizId;
  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController(quizId));
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
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: const Color(0xFF101010)),
          ),
          const SizedBox(height: 10.0),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => controller.checkAns(question, index),
              quizid: quizId,
            ),
          ),
        ],
      ),
    );
  }
}
