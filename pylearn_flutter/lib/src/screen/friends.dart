import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/screen/add_friend.dart';
import 'package:pylearn_flutter/src/screen/friendProfile.dart';
import 'package:pylearn_flutter/src/screen/home_screen.dart';
import 'package:pylearn_flutter/src/screen/main_screen.dart';
import 'package:pylearn_flutter/src/provs/friends_prov.dart';
import 'package:pylearn_flutter/src/screen/profile.dart';

class FriendsW extends MainScreen {
  FriendsW({super.key});

  List<String> friends = [];

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;
    final provider_friends = ref.watch(prov_friends.notifier);
    final lst = provider_friends.get();
    Map<String, String> email_name = {};

    return Scaffold(
        appBar: AppBar(
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
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      screenSize.width * 0.02, screenSize.height * 0.03, 0, 0),
                  child: FutureBuilder(
                      future: lst,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done &&
                            !snapshot.hasError) {
                          for (int i = 0; i < snapshot.data!.length; ++i) {
                            friends.add(snapshot.data![i].userid2);
                            email_name[snapshot.data![i].userid2] =
                                snapshot.data![i].username2;
                          }
                          return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenSize.width * 0.04),
                              child: Container(
                                  height: screenSize.height * 0.65,
                                  child: SingleChildScrollView(
                                    child: Column(
                                        children: List.generate(friends.length,
                                            (index) {
                                      return Container(
                                          child: Dismissible(
                                              key: Key(index.toString()),
                                              direction:
                                                  DismissDirection.endToStart,
                                              onDismissed: (_) {
                                                provider_friends
                                                    .delete(friends[index]);
                                              },
                                              child: Card(
                                                  color: Theme.of(context)
                                                      .cardColor,
                                                  child: ListTile(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    title: Text(
                                                        email_name[
                                                                friends[index]]
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontSize: screenSize
                                                                    .width *
                                                                0.04)),
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  friendProfile(
                                                                    friendEmail:
                                                                        friends[
                                                                            index],
                                                                  )));
                                                    },
                                                  ))));
                                    })),
                                  )));
                        } else {
                          return const Text("Подождите, идёт загрузка...");
                        }
                      })),
              Padding(
                  padding: EdgeInsets.fromLTRB(screenSize.width * 0.02, 0,
                      screenSize.width * 0.02, screenSize.height * 0.05),
                  child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blue.shade300,
                      child: MaterialButton(
                        minWidth: screenSize.width * 0.8,
                        height: 55,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddFriend()));
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            const Text(
                              'Добавить друга',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  child: const Icon(Icons.people,
                                      color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      )))
            ]));
  }
}
