import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pylearn_flutter/src/components/question_controller.dart';
import 'progress_bar.dart';
import 'question.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.quizId});

  final String quizId;

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController(quizId));
    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ProgressBar(
                  quizId: quizId,
                ),
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
                          .copyWith(color: const Color(0xFF8B94BC)),
                      children: [
                        TextSpan(
                          text: "/${questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: const Color(0xFF8B94BC)),
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
                    question: questionController.questions[index],
                    quizId: quizId,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
