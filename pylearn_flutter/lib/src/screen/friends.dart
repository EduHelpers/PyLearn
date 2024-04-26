import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/components/friend_card.dart';
import 'package:pylearn_flutter/src/screen/add_friend.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'package:pylearn_flutter/src/provs/friends_prov.dart';

class FriendsW extends MainScreen {
  const FriendsW({super.key});
  AppBar appBar(BuildContext context, WidgetRef ref) {
    return AppBar(
      foregroundColor: Colors.white,
      title: const Text(
        'Ваши друзья',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'MainFont',
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: Colors.blue.shade300,
    );
  }

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;
    final provider = ref.watch(prov_friends);

    return Scaffold(
        body: Column(children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
          child: Container(
              height: screenSize.height * 0.3,
              child: SingleChildScrollView(
                child: Column(
                    children: List.generate(provider.length, (index) {
                  return Container(
                      color: Colors.red.shade700,
                      child: Dismissible(
                          key: Key(index.toString()),
                          direction: DismissDirection.endToStart,
                          onDismissed: (_) {
                            //TODO
                          },
                          child: Card(
                              color: Theme.of(context).cardColor,
                              child: ListTile(
                                visualDensity: VisualDensity.compact,
                                title: Text('Checkbox $index'),
                              ))));
                })),
              ))),
      Padding(
          padding: EdgeInsets.fromLTRB(screenSize.width * 0.02,
              screenSize.height * 0.05, screenSize.width * 0.02, 0),
          child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blue.shade300,
              child: MaterialButton(
                minWidth: screenSize.width * 0.8,
                height: 55,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MainAdd()));
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Text(
                      'Добавить друга',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: const Icon(Icons.people, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )))
    ]));
  }
}
