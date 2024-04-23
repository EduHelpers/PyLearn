import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/utils/client_api.dart';
import 'package:pylearn_flutter/src/utils/stons.dart';
import 'package:pylearn_flutter/src/models/sess_models.dart';

// "Поставщик" сеансов
class SessionProv extends StateNotifier<Sess> {
  final Ref ref;
  SessionProv(this.ref, Sess init) : super(init) {
    update();
  }
  final sessmngr = st<CliAPi>().mngr;
  final api = st<CliAPi>().clnt;

  out() async {
    await sessmngr.signOut();
    update();
  }

  update() async {
    final u = sessmngr.signedInUser;
    state = state.copyWith(u: u);
  }
}

final prov =
    StateNotifierProvider<SessionProv, Sess>((ref) => SessionProv(ref, Sess()));
