import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:pylearn_flutter/src/utils/stons.dart';
import 'package:pylearn_flutter/src/utils/client_api.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Добро пожаловать в PyLearn!")),
      body: Consumer(builder: (context, ref, _) {
        return Center(
          child: SignInWithEmailButton(
            onSignedIn: () {
              ref.read(prov.notifier).update();
              ref.read(prov_stats.notifier).create();
            },
            caller: st<CliAPi>().clnt.modules.auth,
          ),
        );
      }),
    );
  }
}
