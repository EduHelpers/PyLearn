import 'package:circular/circular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'quiz_screen.dart';
import 'package:get/get.dart';

class Quiz extends MainScreen {
  const Quiz({super.key});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;
    final stats = ref.watch(prov_stats);
    final prev_res = (stats[0].quiz200 * 100).toStringAsFixed(2);
    int num_of_questions = 1;

    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: screenSize.height * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Генератор случайного квиза",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: const Color.fromRGBO(6, 23, 54, 0.9),
                        fontWeight: FontWeight.bold,
                        fontFamily: "MainFont",
                        fontSize: screenSize.width * 0.065),
                  ),
                  const SizedBox(width: 4),
                ],
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(screenSize.width * 0.05,
                  screenSize.height * 0.02, screenSize.width * 0.05, 0),
              child: InkWell(
                onTap: () => Get.off(const QuizScreen(quizId: "Random")),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(screenSize.width * 0.06),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "НАЧАТЬ",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.black),
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(screenSize.width * 0.05,
                  screenSize.height * 0.02, screenSize.width * 0.05, 0),
              child: Text(
                "Результат последней попытки: $prev_res%",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: const Color.fromRGBO(6, 23, 54, 0.9),
                    fontWeight: FontWeight.bold,
                    fontFamily: "MainFont",
                    fontSize: screenSize.width * 0.055),
              )),
          //         CircularSlider(
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(200),
          //                 boxShadow: const [
          //                   BoxShadow(
          //                       offset: Offset(-10, -10),
          //                       color: Colors.white,
          //                       blurRadius: 20,
          //                       spreadRadius: 1),
          //                   BoxShadow(
          //                       offset: Offset(10, 10),
          //                       color: Color.fromARGB(255, 158, 158, 158),
          //                       blurRadius: 20,
          //                       spreadRadius: 1)
          //                 ]),
          //             maxValue: 100,
          //             radius: 100,
          //             color: Color(0xffEEEEEE),
          //             sliderColor: Color(0xff62CBDA),
          //             unSelectedColor: Color(0xffD7DEE7),

          //             onDrag: (value) {

          //               setState(() {
          //   num_of_questions = value;
          // });
          //               num_of_questions = value;
          //             },
          //             child: Text(
          //               num_of_questions.toString(),
          //               style: TextStyle(fontSize: 30),
          //             ))
        ],
      ),
    );
  }
}
