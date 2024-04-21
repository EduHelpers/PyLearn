import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';

class ProfileScreen extends MainScreen {
  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(prov_stats);

    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.builder(
            itemCount: stats.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Text(stats[0].id.toString());
            }),
        TextButton(
            onPressed: () {
              ref.read(prov.notifier).out();
            },
            child: Text("LOG OUT ANDREW!!!!!! TATE"))
      ],
    ));
  }
}
