import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:pylearn_flutter/src/utils/stons.dart';
import 'package:pylearn_flutter/src/utils/client_api.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    final Size sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 23, 54, 0.9),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 220,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 60.0,
                            fontFamily: 'EngFont',
                            color: Colors.white70),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText('PyLearn',
                                speed: const Duration(milliseconds: 600))
                          ],
                          totalRepeatCount: 50,
                        ),
                      ),
                    )
                  ],
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, sizeScreen.height * 0.01, 0, 0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ваш бесплатный помощник \nв изучении языка \nпрограммирования Python",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'EngFont',
                          color: Colors.white70),
                    )
                  ],
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, sizeScreen.height * 0.05, 0, 0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Consumer(builder: (context, ref, _) {
                    return Center(
                      child: SignInWithEmailButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.5);
                              }
                              return null;
                            },
                          ),
                        ),
                        onSignedIn: () {
                          ref.read(prov.notifier).update();
                          ref.read(prov_stats.notifier).create();
                        },
                        caller: st<CliAPi>().clnt.modules.auth,
                      ),
                    );
                  })
                ]))
          ]),
    );
  }
}
