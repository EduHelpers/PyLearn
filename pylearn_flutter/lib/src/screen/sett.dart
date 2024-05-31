import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';

class Settings extends MainScreen {
  const Settings({super.key});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final Size sizeScreen = MediaQuery.of(context).size;
    final f = ref.read(prov_stats.notifier);

    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            'Настройки',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'MainFont',
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 72, 72, 72),
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(sizeScreen.width * 0.05,
                sizeScreen.height * 0.03, sizeScreen.width * 0.05, 0),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(sizeScreen.width * 0.02,
                      sizeScreen.height * 0.015, sizeScreen.width * 0.02, 0),
                  child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black,
                      child: MaterialButton(
                        minWidth: sizeScreen.width * 0.8,
                        height: 55,
                        onPressed: () {
                          AwesomeDialog(
                                  btnCancelText: "Отмена",
                                  btnOkText: "Сбросить",
                                  context: context,
                                  dialogType: DialogType.infoReverse,
                                  animType: AnimType.scale,
                                  title:
                                      'Вы уверены что хотите сбросить прогресс?',
                                  btnOkOnPress: () {
                                    ref.watch(prov_stats);
                                    f.reset();
                                  },
                                  btnCancelOnPress: () {})
                              .show();
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Text(
                              '1. Сбросить прогресс',
                              style: TextStyle(
                                  fontSize: sizeScreen.width * 0.04,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  child: Icon(
                                    Icons.restart_alt_rounded,
                                    color: Colors.white,
                                    size: sizeScreen.width * 0.07,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ))),
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      sizeScreen.width * 0.02,
                      sizeScreen.height * 0.035,
                      sizeScreen.width * 0.02,
                      sizeScreen.height * 0.1),
                  child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black,
                      child: MaterialButton(
                        minWidth: sizeScreen.width * 0.8,
                        height: 55,
                        onPressed: () {
                          //FocusScope.of(context).requestFocus(FocusNode());
                          AwesomeDialog(
                                  btnCancelText: "Отмена",
                                  btnOkText: "Изменить",
                                  context: context,
                                  dialogType: DialogType.noHeader,
                                  animType: AnimType.scale,
                                  body: Column(children: [
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            0,
                                            sizeScreen.height * 0.015,
                                            0,
                                            sizeScreen.height * 0.015),
                                        child: Text(
                                            "Введите новое имя пользователя",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize:
                                                    sizeScreen.width * 0.04,
                                                color: Colors.black))),
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            sizeScreen.width * 0.04,
                                            0,
                                            sizeScreen.width * 0.04,
                                            sizeScreen.height * 0.025),
                                        child: const TextField(
                                          keyboardAppearance: Brightness.light,
                                          autofocus: true,
                                          decoration: InputDecoration(
                                              hintText: "Новое имя"),
                                        ))
                                  ]),
                                  btnOkOnPress: () {
                                    // ref.watch(prov_stats);
                                    // f.reset();
                                  },
                                  btnCancelOnPress: () {})
                              .show();
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Text(
                              '2. Изменить имя\n пользователя',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: sizeScreen.width * 0.04,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  child: Icon(
                                    Icons.assignment_ind_rounded,
                                    color: Colors.white,
                                    size: sizeScreen.width * 0.07,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ))),
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      sizeScreen.width * 0.02,
                      sizeScreen.height * 0.035,
                      sizeScreen.width * 0.02,
                      sizeScreen.height * 0.1),
                  child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black,
                      child: MaterialButton(
                        minWidth: sizeScreen.width * 0.8,
                        height: 55,
                        onPressed: () {},
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Text(
                              '2. Изменить имя\n пользователя',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: sizeScreen.width * 0.04,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  child: Icon(
                                    Icons.assignment_ind_rounded,
                                    color: Colors.white,
                                    size: sizeScreen.width * 0.07,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )))

            ])));
  }
}
