import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_client/pylearn_client.dart';
import 'package:pylearn_flutter/src/utils/client_api.dart';
import 'package:pylearn_flutter/src/utils/stons.dart';
import 'package:pylearn_flutter/src/models/sess_models.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

// "Поставщик" сеансов
class StatsProv extends StateNotifier<List<Stats>> {
  final Ref ref;
  StatsProv(this.ref) : super([]) {
    update();
  }
  final statsmngr = st<CliAPi>().clnt.stats;

  update() async {
    state = await statsmngr.list();
  }

  create() async {
    await statsmngr.create();
    update();
  }

  get() async {
    return await statsmngr.list();
  }
}

final prov_stats =
    StateNotifierProvider<StatsProv, List<Stats>>((ref) => StatsProv(ref));
