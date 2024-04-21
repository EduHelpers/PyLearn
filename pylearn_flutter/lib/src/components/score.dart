import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pylearn_flutter/src/components/question_controller.dart';
import 'package:pylearn_flutter/src/screen/home_screen.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Score",
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Color(0xFF8B94BC)),
            ),
            SizedBox(height: 10),
            Text(
              "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Color(0xFF8B94BC)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Reset the QuestionController
                _qnController.reset();
                // Navigate to the Home screen
                Get.offAll(
                    NavigationScreen()); // Replace Home() with your actual Home screen widget
              },
              child: Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
