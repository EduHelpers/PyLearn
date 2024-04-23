import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:pylearn_flutter/src/components/question_controller.dart';
import 'package:pylearn_flutter/src/screen/home_screen.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';

class ScoreScreen extends MainScreen {
  final String quizId;

  const ScoreScreen({super.key, required this.quizId});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    QuestionController qnController = Get.put(QuestionController(quizId));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ваш результат:",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: const Color(0xFF8B94BC)),
            ),
            const SizedBox(height: 10),
            Text(
              "${qnController.numOfCorrectAns * 10}/${qnController.questions.length * 10}",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: const Color(0xFF8B94BC)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                qnController.reset();
                Get.offAll(const NavigationScreen());
              },
              child: const Text('Домой'),
            ),
          ],
        ),
      ),
    );
  }
}
