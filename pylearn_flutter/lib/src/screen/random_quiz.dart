import 'dart:math';

import 'package:circular/circular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/Questions.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'quiz_screen.dart';
import 'package:get/get.dart';

class RandomQuiz extends StatefulWidget {
  const RandomQuiz({super.key});

  @override
  Randik createState() => Randik();
}

class Randik extends State<RandomQuiz> {
  int numOfQuestions = 1;
  int numOfSeconds = 30;
  final List<bool> _checkboxValues = List.generate(25, (index) => false);
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          '',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'MainFont',
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 56, 127, 138),
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: screenSize.height * 0.15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Выберите параметры",
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
              padding: EdgeInsets.fromLTRB(0, screenSize.height * 0.03, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Количество вопросов\n",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                    color: const Color.fromRGBO(6, 23, 54, 0.9),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "MainFont",
                                    fontSize: screenSize.width * 0.04)),
                        Padding(
                            padding:
                                EdgeInsets.only(top: screenSize.height * 0.02),
                            child: CircularSlider(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(-10, -10),
                                          color: Colors.white,
                                          blurRadius: 20,
                                          spreadRadius: 1),
                                      BoxShadow(
                                          offset: Offset(10, 10),
                                          color: Color.fromARGB(
                                              255, 158, 158, 158),
                                          blurRadius: 20,
                                          spreadRadius: 1)
                                    ]),
                                maxValue: 200,
                                radius: 80,
                                color: const Color(0xffEEEEEE),
                                sliderColor:
                                    const Color.fromARGB(255, 56, 127, 138),
                                unSelectedColor: const Color(0xffD7DEE7),
                                onDrag: (val) {
                                  setState(() {
                                    numOfQuestions = val;
                                  });
                                },
                                child: Text(
                                  numOfQuestions.toString(),
                                  style: TextStyle(
                                      fontSize: screenSize.width * 0.1),
                                ))),
                      ],
                    ),
                    Column(children: [
                      Text("Количество секунд\nна вопрос",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  color: const Color.fromRGBO(6, 23, 54, 0.9),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MainFont",
                                  fontSize: screenSize.width * 0.04)),
                      Padding(
                          padding:
                              EdgeInsets.only(top: screenSize.height * 0.02),
                          child: CircularSlider(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(-10, -10),
                                        color: Colors.white,
                                        blurRadius: 20,
                                        spreadRadius: 1),
                                    BoxShadow(
                                        offset: Offset(10, 10),
                                        color:
                                            Color.fromARGB(255, 158, 158, 158),
                                        blurRadius: 20,
                                        spreadRadius: 1)
                                  ]),
                              maxValue: 120,
                              radius: 80,
                              color: const Color(0xffEEEEEE),
                              sliderColor:
                                  const Color.fromARGB(255, 56, 127, 138),
                              unSelectedColor: const Color(0xffD7DEE7),
                              onDrag: (val) {
                                setState(() {
                                  numOfSeconds = val;
                                });
                              },
                              child: Text(
                                numOfSeconds.toString(),
                                style:
                                    TextStyle(fontSize: screenSize.width * 0.1),
                              )))
                    ])
                  ])),
          Padding(
              padding: EdgeInsets.fromLTRB(
                  screenSize.width * 0.08, screenSize.height * 0.04, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Выберите темы вопросов",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: const Color.fromRGBO(6, 23, 54, 0.9),
                        fontWeight: FontWeight.bold,
                        fontFamily: "MainFont",
                        fontSize: screenSize.width * 0.04),
                  ),
                ],
              )),
          Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
              child: Container(
                height: screenSize.height * 0.3,
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(_checkboxValues.length, (index) {
                      return CheckboxListTile(
                        title: Text(topics[index]),
                        value: _checkboxValues[index],
                        shape: CircleBorder(),
                        onChanged: (bool? value) {
                          setState(() {
                            _checkboxValues[index] = value!;
                          });
                        },
                      );
                    }),
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(screenSize.width * 0.05,
                  screenSize.height * 0.02, screenSize.width * 0.05, 0),
              child: InkWell(
                onTap: () => Get.off(QuizScreen(
                    "Random", numOfSeconds, _checkboxValues, numOfQuestions)),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(screenSize.width * 0.06),
                  color: const Color.fromARGB(255, 56, 127, 138),
                  child: Text(
                    "НАЧАТЬ",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.white),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
