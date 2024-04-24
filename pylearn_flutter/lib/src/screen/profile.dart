import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/about.dart';
import 'package:pylearn_flutter/src/screen/friends.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:pylearn_flutter/src/screen/settings.dart';

class ProfileScreen extends MainScreen {
  const ProfileScreen({super.key});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final stats0 = ref.read(prov_stats.notifier);
    final Size sizeScreen = MediaQuery.of(context).size;
    final stats = ref.watch(prov_stats);
    final session = ref.watch(prov);

    String day = stats[0].lastAction.day.toString();
    String month = stats[0].lastAction.month.toString();
    if (month.length == 1) {
      month = "0$month";
    }
    String year = stats[0].lastAction.year.toString();
    String hour = (stats[0].lastAction.hour + 3).toString();
    String minute = stats[0].lastAction.minute.toString();
    if (minute.length == 1) {
      minute = "0$minute";
    }

    return SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Column(children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(sizeScreen.width * 0.05,
                        sizeScreen.height * 0.03, 0, 0),
                    child: const Text(
                      "Ваш профиль",
                      style: TextStyle(
                          fontFamily: 'MainFont',
                          fontWeight: FontWeight.w600,
                          fontSize: 40),
                    ))
              ],
            ),
            Row(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      sizeScreen.width * 0.05, sizeScreen.height * 0.01, 0, 0),
                  child: Text("Имя пользователя: ${session.u!.userName}",
                      style: const TextStyle(
                          fontFamily: 'MainFont', fontSize: 18))),
            ]),
            Row(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      sizeScreen.width * 0.05, sizeScreen.height * 0.01, 0, 0),
                  child: Text(
                      "Дата последнего действия:\n$day.$month.$year $hour:$minute",
                      style: const TextStyle(
                          fontFamily: 'MainFont', fontSize: 18))),
            ]),
            Padding(
                padding: EdgeInsets.fromLTRB(sizeScreen.width * 0.02,
                    sizeScreen.height * 0.05, sizeScreen.width * 0.02, 0),
                child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blue.shade300,
                    child: MaterialButton(
                      minWidth: sizeScreen.width * 0.8,
                      height: 55,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Friends()));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Text(
                            'Ваши друзья',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                child: const Icon(Icons.people,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.fromLTRB(sizeScreen.width * 0.02,
                    sizeScreen.height * 0.015, sizeScreen.width * 0.02, 0),
                child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromARGB(255, 72, 72, 72),
                    child: MaterialButton(
                      minWidth: sizeScreen.width * 0.8,
                      height: 55,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Settings()));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Text(
                            'Настройки',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                child: const Icon(Icons.settings,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.fromLTRB(
                    sizeScreen.width * 0.02,
                    sizeScreen.height * 0.015,
                    sizeScreen.width * 0.02,
                    sizeScreen.height * 0.1),
                child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromARGB(255, 88, 204, 84),
                    child: MaterialButton(
                      minWidth: sizeScreen.width * 0.8,
                      height: 55,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const About()));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Text(
                            'О приложении',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                child: const Icon(Icons.question_mark_sharp,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    )))
          ]),
          Padding(
              padding: EdgeInsets.fromLTRB(sizeScreen.width * 0.02, 0,
                  sizeScreen.width * 0.02, sizeScreen.height * 0.12),
              child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.red.shade600,
                  child: MaterialButton(
                    minWidth: sizeScreen.width * 0.8,
                    height: 55,
                    onPressed: () {
                      AwesomeDialog(
                              btnCancelText: "Отмена",
                              btnOkText: "Выйти",
                              context: context,
                              dialogType: DialogType.infoReverse,
                              animType: AnimType.scale,
                              title: 'Вы уверены что хотите выйти из аккаунта?',
                              btnOkOnPress: () {
                                ref.read(prov.notifier).out();
                              },
                              btnCancelOnPress: () {})
                          .show();
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const Text(
                          'Выйти из аккаунта',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6),
                              child: const Icon(Icons.exit_to_app,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  )))
        ]));
  }
}
