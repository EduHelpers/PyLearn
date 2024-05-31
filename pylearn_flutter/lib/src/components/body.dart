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
    final Size screenSize = MediaQuery.of(context).size;
    QuestionController questionController =
        Get.put(QuestionController(quizId, duration, lst, randNum));
    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ProgressBar(quizId, duration, lst, randNum),
              ),
              const SizedBox(height: 10.0),
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
              const SizedBox(height: 2.0),
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
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    questionController.nextQuestion();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(screenSize.width * 0.02),
                    ),
                    backgroundColor: const Color.fromRGBO(6, 23, 54, 0.9),
                  ),
                  child: Container(
                    width: screenSize.width * 1,
                    height: screenSize.height * 0.07,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: screenSize.width * 0.0),
                    child: Text(
                      'Следующий вопрос',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width * 0.035,
                      ),
                    ),
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
