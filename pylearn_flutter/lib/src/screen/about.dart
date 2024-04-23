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
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(screenSize.width * 0.08,
                        screenSize.height * 0.08, screenSize.width * 0.38, 0),
                    child: const Text(
                        "Данное приложение создано в качестве курсовой работы"))
              ],
            ),
          ],
        ));
  }
}
