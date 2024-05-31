import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_client/pylearn_client.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/Questions.dart';
import 'package:pylearn_flutter/src/screen/about.dart';
import 'package:pylearn_flutter/src/screen/friends.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:pylearn_flutter/src/screen/settings.dart';
import 'package:pylearn_flutter/src/screen/tutorials_screen.dart';

class friendProfile extends MainScreen {
  const friendProfile({super.key, required this.friendEmail});
  final String friendEmail;

  @override
  AppBar appBar(BuildContext context, WidgetRef ref) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue.shade300,
    );
  }

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final provider_stats = ref.read(prov_stats.notifier);
    final Size sizeScreen = MediaQuery.of(context).size;
    Future<Stats?> stats = provider_stats.getFriendStats(friendEmail);
    List<double> quiz_stats;

    return SafeArea(
        child: FutureBuilder(
            future: stats,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  !snapshot.hasError) {
                String day = snapshot.data!.lastAction.day.toString();
                String month = snapshot.data!.lastAction.month.toString();
                if (month.length == 1) {
                  month = "0$month";
                }
                String year = snapshot.data!.lastAction.year.toString();
                String hour = (snapshot.data!.lastAction.hour + 3).toString();
                String minute = snapshot.data!.lastAction.minute.toString();
                if (minute.length == 1) {
                  minute = "0$minute";
                }
                if (hour.length == 1) {
                  hour = "0$hour";
                }
                if (day.length == 1) {
                  day = "0$day";
                }

                quiz_stats = [
                  snapshot.data!.quiz1,
                  snapshot.data!.quiz2,
                  snapshot.data!.quiz3,
                  snapshot.data!.quiz4,
                  snapshot.data!.quiz5,
                  snapshot.data!.quiz6,
                  snapshot.data!.quiz7,
                  snapshot.data!.quiz8,
                  snapshot.data!.quiz9,
                  snapshot.data!.quiz10,
                  snapshot.data!.quiz11,
                  snapshot.data!.quiz12,
                  snapshot.data!.quiz13,
                  snapshot.data!.quiz14,
                  snapshot.data!.quiz15,
                  snapshot.data!.quiz16,
                  snapshot.data!.quiz17,
                  snapshot.data!.quiz18,
                  snapshot.data!.quiz19,
                  snapshot.data!.quiz20,
                  snapshot.data!.quiz21,
                  snapshot.data!.quiz22,
                  snapshot.data!.quiz23,
                  snapshot.data!.quiz24,
                  snapshot.data!.quiz25
                ];
                if (snapshot.data!.quiz39 == 1.0) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      sizeScreen.width * 0.05,
                                      sizeScreen.height * 0.01,
                                      0,
                                      0),
                                  child: Text(
                                    "Это страница\nтвоего друга:",
                                    style: TextStyle(
                                        fontFamily: 'MainFont',
                                        fontWeight: FontWeight.w600,
                                        fontSize: sizeScreen.width * 0.09),
                                  ))
                            ],
                          ),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(
                                    sizeScreen.width * 0.05,
                                    sizeScreen.height * 0.01,
                                    0,
                                    0),
                                child: Text(snapshot.data!.username,
                                    style: TextStyle(
                                        fontFamily: 'MainFont',
                                        fontWeight: FontWeight.w600,
                                        fontSize: sizeScreen.width * 0.07))),
                          ]),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(
                                    sizeScreen.width * 0.05,
                                    sizeScreen.height * 0.02,
                                    0,
                                    0),
                                child: Text(
                                    "Его / её email адрес:\n${snapshot.data!.email}",
                                    style: TextStyle(
                                        fontFamily: 'MainFont',
                                        fontSize: sizeScreen.width * 0.05))),
                          ]),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(
                                    sizeScreen.width * 0.05,
                                    sizeScreen.height * 0.01,
                                    0,
                                    0),
                                child: Text(
                                    "Дата его / её последнего действия:\n$day.$month.$year $hour:$minute",
                                    style: TextStyle(
                                        fontFamily: 'MainFont',
                                        fontSize: sizeScreen.width * 0.05))),
                          ]),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(
                                    sizeScreen.width * 0.05,
                                    sizeScreen.height * 0.02,
                                    0,
                                    0),
                                child: Text(
                                    "К сожалению, данный пользователь\nскрыл свою статистику =(",
                                    style: TextStyle(
                                        fontFamily: 'MainFont',
                                        fontWeight: FontWeight.w600,
                                        fontSize: sizeScreen.width * 0.04,
                                        color: const Color.fromARGB(
                                            255, 147, 22, 22)))),
                          ]),
                        ])
                      ]);
                } else {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      sizeScreen.width * 0.05,
                                      sizeScreen.height * 0.01,
                                      0,
                                      0),
                                  child: Text(
                                    "Это страница\nтвоего друга:",
                                    style: TextStyle(
                                        fontFamily: 'MainFont',
                                        fontWeight: FontWeight.w600,
                                        fontSize: sizeScreen.width * 0.09),
                                  ))
                            ],
                          ),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(
                                    sizeScreen.width * 0.05,
                                    sizeScreen.height * 0.01,
                                    0,
                                    0),
                                child: Text(snapshot.data!.username,
                                    style: TextStyle(
                                        fontFamily: 'MainFont',
                                        fontWeight: FontWeight.w600,
                                        fontSize: sizeScreen.width * 0.07))),
                          ]),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(
                                    sizeScreen.width * 0.05,
                                    sizeScreen.height * 0.02,
                                    0,
                                    0),
                                child: Text(
                                    "Его / её email адрес:\n${snapshot.data!.email}",
                                    style: TextStyle(
                                        fontFamily: 'MainFont',
                                        fontSize: sizeScreen.width * 0.05))),
                          ]),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(
                                    sizeScreen.width * 0.05,
                                    sizeScreen.height * 0.01,
                                    0,
                                    0),
                                child: Text(
                                    "Дата его / её последнего действия:\n$day.$month.$year $hour:$minute",
                                    style: TextStyle(
                                        fontFamily: 'MainFont',
                                        fontSize: sizeScreen.width * 0.05))),
                          ]),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(
                                    sizeScreen.width * 0.05,
                                    sizeScreen.height * 0.02,
                                    0,
                                    0),
                                child: Text("Статистика:",
                                    style: TextStyle(
                                        fontFamily: 'MainFont',
                                        fontWeight: FontWeight.w600,
                                        fontSize: sizeScreen.width * 0.05))),
                          ]),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizeScreen.width * 0.05),
                              child: Container(
                                height: sizeScreen.height * 0.4,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: List.generate(25, (index) {
                                      return ListBody(children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              sizeScreen.width * 0,
                                              sizeScreen.height * 0.02,
                                              sizeScreen.width * 0.04,
                                              sizeScreen.height * 0.02),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "${index + 1}. ${topics[index]}",
                                                  style:
                                                      const TextStyle(fontSize: 18),
                                                ),
                                                CircularProgressBar(
                                                  progressSW: 10,
                                                  backSW: 10,
                                                  size: 30,
                                                  value: quiz_stats[index],
                                                  merge: true,
                                                ),
                                              ]),
                                        )
                                      ]);
                                    }),
                                  ),
                                ),
                              ))
                        ])
                      ]);
                }
              } else {
                return const Text("Подождите, идёт загрузга...");
              }
            }));
  }
}
