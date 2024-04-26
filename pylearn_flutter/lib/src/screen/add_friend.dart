import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_client/pylearn_client.dart';
import 'package:pylearn_flutter/src/components/friend_card.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/Questions.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'package:pylearn_flutter/src/provs/friends_prov.dart';

class MainAdd extends StatefulWidget {
  const MainAdd({super.key});

  @override
  AddFriend createState() => AddFriend();
}

class AddFriend extends State<MainAdd> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    //final provider = ref.watch(prov_friends);

    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: Text(
            'Добавить друга',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'MainFont',
              fontSize: screenSize.width * 0.06,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.blue.shade300,
        ),
        body: Column(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(screenSize.width * 0.08,
                  screenSize.height * 0.2, screenSize.width * 0.08, 0),
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
          Padding(
            padding: EdgeInsets.fromLTRB(screenSize.width * 0.02,
                screenSize.height * 0.1, screenSize.width * 0.02, 0),
            child: Consumer(builder: (context, ref, _) {
              return Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue.shade300,
                  child: MaterialButton(
                      minWidth: screenSize.width * 0.8,
                      height: 55,
                      onPressed: () {
                        final f = ref.watch(prov_stats);
                        final fr_p = ref.read(prov_friends.notifier);
                        //f.ExistingEmail(_controller.text);

                        if (emails.containsKey(_controller.text)) {
                          print(emails[_controller.text].toString() + "\n");
                          fr_p.add(f[0].userId, emails[_controller.text]!);
                        } else {
                          print('invalid email ');
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
                      )));
            }),
          )
        ]));
  }
}
