import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';

class About extends MainScreen {
  const About({super.key});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            'О приложении',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'MainFont',
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 88, 204, 84),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(screenSize.width * 0.08,
                  screenSize.height * 0.08, screenSize.width * 0.08, 0),
              child: Column(children: [
                Text(
                  "Данное приложение создано в качестве курсовой работы студентами Факультета компьютерных наук НИУ ВШЭ образовательной "
                  "программы \"Прикладная математика и информатика\" группы БПМИ2210.\n\nРаботу выполнили:\n1."
                  " Муштаков Макар Игоревич\n2. Ли Андрей Алексеевич\n3. Улыбин Александр Романович\n4. "
                  "Фахретдинов Артур Эдуардович.\n\nПод руководством научного руководителя:\nПетрова Тимура Александровича.\n\nМосква, 2024",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: screenSize.width * 0.045),
                ),
              ]),
            ),
          ],
        ));
  }
}
