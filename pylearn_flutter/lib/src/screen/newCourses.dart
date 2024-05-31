import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';

class newCourse extends MainScreen {
  const newCourse({super.key});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            'Список курсов',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'MainFont',
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: const Color.fromRGBO(6, 23, 54, 0.9),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(screenSize.width * 0.08,
                  screenSize.height * 0.28, screenSize.width * 0.08, 0),
              child: Column(children: [
                Text(
                  "Пока что здесь пусто :-(\nНо в будущем здесь будут новые курсы!",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: screenSize.width * 0.055),
                ),
              ]),
            ),
          ],
        ));
  }
}
