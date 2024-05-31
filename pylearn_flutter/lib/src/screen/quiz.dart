import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/Questions.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'package:pylearn_flutter/src/screen/random_quiz.dart';

class Quiz extends MainScreen {
  const Quiz({super.key});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;
    final stats = ref.watch(prov_stats);
    final prev_res = (stats[0].quiz200 * 100).toStringAsFixed(2);
    if (stats[0].email.isEmpty && stats[0].username.isEmpty) {
      final sess = ref.watch(prov);
      ref.read(prov_stats.notifier).setEmailAndUser(
          sess.u!.email.toString(), sess.u!.userName.toString());
    }
    //sess.u!.userName = 'ba';

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
              child: CupertinoButton(
                minSize: screenSize.width * 0.15,
                color: const Color.fromRGBO(6, 23, 54, 0.9),
                child: const Text("Начать"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RandomQuiz()));
                },
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
        ],
      ),
    );
  }
}
