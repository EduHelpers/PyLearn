import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';

class newCourses extends MainScreen {
  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final Size sizeScreen = MediaQuery.of(context).size;
    //final f = ref.read(prov_stats.notifier);

    final TextEditingController _controller = TextEditingController();
    final FocusNode focusNode = FocusNode();

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
            child: Column(children: [Text("Скоро здесь будут новые курсы!")])));
  }
}
