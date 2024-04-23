import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pylearn_flutter/src/components/question_controller.dart';
import 'package:pylearn_flutter/src/screen/Questions.dart';

import 'progress_bar.dart';
import 'question.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.quizId}) : super(key: key);

  final String quizId;

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController =
        Get.put(QuestionController(quizId));
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
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Вопрос ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Color(0xFF8B94BC)),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Color(0xFF8B94BC)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: 20.0),
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController!,
                  onPageChanged: (index) {
                    _questionController.updateTheQnNum(index);
                  },
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index],
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
