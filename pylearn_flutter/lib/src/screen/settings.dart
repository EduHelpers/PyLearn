import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';

class Settings extends MainScreen {
  const Settings({super.key});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;

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
          backgroundColor: Colors.grey.shade600,
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(0, screenSize.height * 0.08, 0, 0),
            child: const Column(
              children: [
                Row(
                  children: [],
                )
              ],
            )));
  }
}
