import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_client/pylearn_client.dart';
import 'package:pylearn_flutter/src/utils/client_api.dart';
import 'package:pylearn_flutter/src/utils/stons.dart';

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

  reset() async {
    await statsmngr.resetStats();
    update();
  }

  get() async {
    return await statsmngr.list();
  }
  // rename(int index, String name) async {
  //   final ingredient = state[index];
  //   final updatedIngredient = await client.rename(ingredientId: ingredient.id!, name: name);

  //   if (updatedIngredient != null) {
  //     state = [...state]
  //       ..removeAt(index)
  //       ..insert(index, updatedIngredient);
  //   }
  // }

  reWriteStats(String s, double d) async {
    final stats = state[0];
    final upd = await statsmngr.restat(s: s, d: d);

    if (upd != null) {
      state = [...state]
        ..removeAt(0)
        ..insert(0, upd);
    }
    update();
  }

  reTime() async {
    final time = state[0];
    final upd = await statsmngr.retime();
    if (upd != null) {
      state = [...state]
        ..removeAt(0)
        ..insert(0, upd);
    }
    update();
  }
}

// ignore: non_constant_identifier_names
final prov_stats =
    StateNotifierProvider<StatsProv, List<Stats>>((ref) => StatsProv(ref));
