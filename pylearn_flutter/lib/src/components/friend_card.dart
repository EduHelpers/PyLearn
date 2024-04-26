import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_client/pylearn_client.dart';
import 'package:pylearn_flutter/src/provs/friends_prov.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';

class FriendsCard extends MainScreen {
  final Friends fr;
  final int index;

  const FriendsCard({
    super.key,
    required this.fr,
    required this.index,
  });

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final provider = ref.read(prov_friends.notifier);

    return Column(children: [
      Row(children: [
        Container(
          color: Colors.red.shade700,
          child: Dismissible(
            key: Key(fr.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              provider.delete(fr.userid2);
            },
            child: Container(
              color: Theme.of(context).cardColor,
              child: Card(
                child: ListTile(
                  dense: true,
                  visualDensity: VisualDensity.compact,
                  title: Text(
                      fr.userid1.toString() + " - " + fr.userid2.toString()),
                ),
              ),
            ),
          ),
        )
      ]),
      Row(children: [
        Text(
          "datfdgfddfsfsdfdssfdgfga",
          style: TextStyle(fontSize: 150, color: Colors.black),
        )
      ])
    ]);
  }
}
