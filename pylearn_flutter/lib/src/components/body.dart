import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pylearn_flutter/src/components/question_controller.dart';
import 'progress_bar.dart';
import 'question.dart';

class Body extends StatelessWidget {
  Body(this.quizId, this.duration, this.lst, this.randNum, {super.key});

  final String quizId;
  final int duration;
  List<bool> lst = [];
  int randNum = 0;

  @override
  Widget build(BuildContext context) {
    QuestionController questionController =
        Get.put(QuestionController(quizId, duration, lst, randNum));
    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ProgressBar(quizId, duration, lst, randNum),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text: "Вопрос ${questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: const Color(0xFF46A0AE)),
                      children: [
                        TextSpan(
                          text: "/${questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: const Color(0xFF46A0AE)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(thickness: 1.5),
              const SizedBox(height: 20.0),
              Expanded(
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: questionController.pageControl!,
                  onPageChanged: (index) {
                    questionController.updateTheQnNum(index);
                  },
                  itemCount: questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                      questionController.questions[index],
                      quizId,
                      duration,
                      lst,
                      randNum),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
