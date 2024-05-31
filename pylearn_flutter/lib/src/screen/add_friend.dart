import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:pylearn_client/pylearn_client.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/Questions.dart';
import 'package:pylearn_flutter/src/screen/friends.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'package:pylearn_flutter/src/provs/friends_prov.dart';

class AddFriend extends MainScreen {
  final TextEditingController _controller = TextEditingController();
  final FocusNode focusNode = FocusNode();
  List<String> emails = [];

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;
    final provider_friends = ref.read(prov_friends.notifier);
    final provider_stats = ref.read(prov_stats.notifier);
    final lst = provider_stats.listAll();
    Map<String, String> email_name = {};
    final statsWatch = ref.watch(prov_stats);
    String thisEmail = statsWatch[0].email;

    return Scaffold(
        body: Column(children: [
      Row(
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(screenSize.width * 0.02,
                  screenSize.height * 0.1, screenSize.width * 0.04, 0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              )),
        ],
      ),
      Padding(
          padding: EdgeInsets.fromLTRB(screenSize.width * 0.08,
              screenSize.height * 0.15, screenSize.width * 0.08, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Введите email адрес\nвашего друга",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: const Color.fromRGBO(6, 23, 54, 0.9),
                    fontWeight: FontWeight.bold,
                    fontFamily: "MainFont",
                    fontSize: screenSize.width * 0.065),
              ),
            ],
          )),
      Padding(
          padding: EdgeInsets.fromLTRB(screenSize.width * 0.08,
              screenSize.height * 0.05, screenSize.width * 0.08, 0),
          child: TextField(
            //autofocus: true,
            focusNode: focusNode,
            controller: _controller,
            decoration: const InputDecoration(hintText: "email адрес"),
          )),
      FutureBuilder(
          future: lst,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                !snapshot.hasError) {
              for (int i = 0; i < snapshot.data!.length; ++i) {
                emails.add(snapshot.data![i].email);
                email_name[snapshot.data![i].email] =
                    snapshot.data![i].username;
              }
              return Padding(
                padding: EdgeInsets.fromLTRB(screenSize.width * 0.02,
                    screenSize.height * 0.1, screenSize.width * 0.02, 0),
                child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blue.shade300,
                    child: MaterialButton(
                        minWidth: screenSize.width * 0.8,
                        height: 55,
                        onPressed: () {
                          if (_controller.text == thisEmail) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Нельзя добавить самого себя!"),
                            ));
                          } else if (!emails.contains(_controller.text)) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                  "Пользователь с данным email адресом не найден!"),
                            ));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Новый друг добавлен!"),
                            ));
                            provider_friends.update();
                            provider_friends.add(_controller.text,
                                email_name[_controller.text]!);
                            _controller.text = "";
                          }
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Text(
                              'Добавить',
                              style: TextStyle(
                                  fontSize: screenSize.width * 0.05,
                                  color: Colors.white),
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
                        ))),
              );
            } else {
              return const Text("Подождите, идёт загрузка...");
            }
          }),
    ]));
  }
}
