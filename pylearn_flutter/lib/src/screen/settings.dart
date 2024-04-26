import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';

class MainSet extends StatefulWidget {
  const MainSet({super.key, required this.val});
  final int val;

  @override
  Settings createState() => Settings(val: val);
}

class Settings extends State<MainSet> {
  int val;

  Settings({required this.val});

  @override
  Widget build(BuildContext context) {
    final Size sizeScreen = MediaQuery.of(context).size;
    //final f = ref.read(prov_stats.notifier);

    final TextEditingController _controller = TextEditingController();
    final FocusNode focusNode = FocusNode();

    @override
    void initState() {
      super.initState();
      focusNode.requestFocus();
    }

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
                sizeScreen.height * 0.015, sizeScreen.width * 0.05, 0),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(sizeScreen.width * 0.02,
                      sizeScreen.height * 0.015, sizeScreen.width * 0.02, 0),
                  child: Consumer(builder: (context, ref, _) {
                    return Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color.fromARGB(255, 72, 72, 72),
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
                                      final f = ref.read(prov_stats.notifier);
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
                        ));
                  })),
              Padding(
                  padding: EdgeInsets.fromLTRB(sizeScreen.width * 0.02,
                      sizeScreen.height * 0.015, sizeScreen.width * 0.02, 0),
                  child: Consumer(builder: (context, ref, _) {
                    return Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color.fromARGB(255, 72, 72, 72),
                        child: MaterialButton(
                          minWidth: sizeScreen.width * 0.8,
                          height: 55,
                          onPressed: () {
                            // focusNode.requestFocus();
                            AwesomeDialog(
                                    btnCancelText: "Отмена",
                                    btnOkText: "Сохранить",
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
                                                  color: const Color.fromARGB(
                                                      255, 72, 72, 72)))),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              sizeScreen.width * 0.04,
                                              0,
                                              sizeScreen.width * 0.04,
                                              sizeScreen.height * 0.025),
                                          child: TextField(
                                            //autofocus: true,
                                            focusNode: focusNode,
                                            controller: _controller,
                                            decoration: const InputDecoration(
                                                hintText: "Новое имя"),
                                          ))
                                    ]),
                                    btnOkOnPress: () {
                                      final f = ref.read(prov_stats.notifier);
                                      ref.watch(prov_stats);
                                      f.setName(_controller.text);
                                      final session = ref.watch(prov);
                                      session.u?.userName = _controller.text;
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
                        ));
                  })),
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      sizeScreen.width * 0.02,
                      sizeScreen.height * 0.015,
                      sizeScreen.width * 0.02,
                      sizeScreen.height * 0.1),
                  child: Consumer(builder: (context, ref, _) {
                    return Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color.fromARGB(255, 72, 72, 72),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(
                                  sizeScreen.width * 0.1,
                                  sizeScreen.height * 0.015,
                                  sizeScreen.width * 0.1,
                                  sizeScreen.height * 0.01),
                              child: Text(
                                '3. Количество секунд на 1 вопрос',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: sizeScreen.width * 0.04,
                                    color: Colors.white),
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  bottom: sizeScreen.height * 0.008),
                              child: CupertinoSlider(
                                min: 1,
                                max: 120,
                                value: val.toDouble(),
                                onChanged: (value) {
                                  setState(() {
                                    val = value.round();
                                  });
                                },
                                onChangeEnd: (value) {
                                  final f = ref.read(prov_stats.notifier);
                                  ref.watch(prov_stats);
                                  f.setDuration(value.round());
                                },
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  bottom: sizeScreen.height * 0.018),
                              child: Text(
                                "$val с.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: sizeScreen.width * 0.04,
                                    color: Colors.white),
                              ))
                        ]));
                  })),

              // Padding(
              //     padding: EdgeInsets.fromLTRB(
              //         sizeScreen.width * 0.02,
              //         sizeScreen.height * 0.015,
              //         sizeScreen.width * 0.02,
              //         sizeScreen.height * 0.1),
              //     child: Material(
              //         elevation: 5,
              //         borderRadius: BorderRadius.circular(20.0),
              //         color: Colors.black,
              //         child: Slider(
              //           onChanged: (double value) {
              //             setState(() {});
              //           },
              //         )))
            ])));
  }
}
