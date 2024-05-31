import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_client/pylearn_client.dart';
import 'package:pylearn_flutter/src/screen/Questions.dart';
import 'package:pylearn_flutter/src/utils/client_api.dart';
import 'package:pylearn_flutter/src/utils/stons.dart';

// "Поставщик" сеансов
class FriendsProv extends StateNotifier<List<Friends>> {
  final Ref ref;
  FriendsProv(this.ref) : super([]) {
    update();
  }
  final friendsmngr = st<CliAPi>().clnt.friends;

  update() async {
    state = await friendsmngr.list();
  }

  delete(String email2) async {
    await friendsmngr.delete(userId2: email2);
  }

  add(String email2, String userName2) async {
    await friendsmngr.create(userId2: email2, userName2: userName2);
  }

  Future<List<Friends>> get() async {
    return await friendsmngr.list();
  }

// ignore: non_constant_identifier_names
}

final prov_friends = StateNotifierProvider<FriendsProv, List<Friends>>(
    (ref) => FriendsProv(ref));
