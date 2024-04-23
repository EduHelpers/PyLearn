import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pylearn_flutter/src/screen/quiz.dart';
import 'question_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.quizId,
  }) : super(key: key);

  final String quizId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(quizId),
        builder: (controller) {
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * controller.animation!.value,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "${15 - (controller.animation!.value * 15).round()} sec"),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
