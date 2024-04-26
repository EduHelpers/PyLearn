// ignore_for_file: dead_code

import 'dart:math';

import 'package:pylearn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class StatsEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<List<Stats>> list(Session session) async {
    final userId = await session.auth.authenticatedUserId;

    if (userId == null) {
      return [];
    }

    // ignore: deprecated_member_use_from_same_package
    return await Stats.find(session, where: (i) => i.userId.equals(userId));
  }

  Future<List<Stats>> ExistingEmail(Session session, {required String email}) async {
    final userId = await session.auth.authenticatedUserId;

    if (userId == null) {
      return [];
    }

    // ignore: deprecated_member_use_from_same_package
    return await Stats.find(session, where: (i) => i.email.equals(email));
  }

  Future<Stats?> restat(Session session,
      {required String s, required double d}) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return null;

    // ignore: deprecated_member_use_from_same_package
    final stata = await Stats.find(
      session,
      where: (item) => item.userId.equals(userId),
    );

    // ignore: unnecessary_null_comparison
    if (stata[0] != null) {
      if (s == "Ввод и вывод \nданных") {
        stata[0].quiz1 = d;
      } else if (s == 'Числовые типы \nданных') {
        stata[0].quiz2 = d;
      } else if (s == 'Строковый тип \nданных') {
        stata[0].quiz3 = d;
      } else if (s == 'Целочисленная \nарифметика') {
        stata[0].quiz4 = d;
      } else if (s == 'Вещественная \nарифметика') {
        stata[0].quiz5 = d;
      } else if (s == 'Модуль math') {
        stata[0].quiz6 = d;
      } else if (s == 'Строковая \nарифметика') {
        stata[0].quiz7 = d;
      } else if (s == 'Индексация и срезы') {
        stata[0].quiz8 = d;
      } else if (s == 'Строковые методы') {
        stata[0].quiz9 = d;
      } else if (s == 'Условные \nоператоры') {
        stata[0].quiz10 = d;
      } else if (s == 'Вложенные условные \nоператоры') {
        stata[0].quiz11 = d;
      } else if (s == 'Split и Join') {
        stata[0].quiz12 = d;
      } else if (s == 'Цикл for') {
        stata[0].quiz13 = d;
      } else if (s == 'Цикл while') {
        stata[0].quiz14 = d;
      } else if (s == 'Операторы break \nи continue') {
        stata[0].quiz15 = d;
      } else if (s == 'Вложенные циклы') {
        stata[0].quiz16 = d;
      } else {
        stata[0].quiz200 = d;
      }
      await Stats.db.update(session, stata);
      return stata[0];
    }

    return null;
  }


  Future<Stats?> resetStats(Session session) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return null;

    // ignore: deprecated_member_use_from_same_package
    final stata = await Stats.find(
      session,
      where: (item) => item.userId.equals(userId),
    );

    // ignore: unnecessary_null_comparison
    if (stata[0] != null) {
      stata[0].quiz1 = stata[0].quiz2 = stata[0].quiz3 =
       stata[0].quiz4 = stata[0].quiz5 = stata[0].quiz6 = 
       stata[0].quiz7 = stata[0].quiz8 = stata[0].quiz9 = 
       stata[0].quiz10 = stata[0].quiz11 = stata[0].quiz12 =
       stata[0].quiz13 = stata[0].quiz14 = stata[0].quiz15 = 
       stata[0].quiz16 = stata[0].quiz17 = stata[0].quiz18 = 
       stata[0].quiz19 = stata[0].quiz20 = stata[0].quiz21 =
       stata[0].quiz22 = stata[0].quiz23 = stata[0].quiz24 =
       stata[0].quiz25 = stata[0].quiz26 = stata[0].quiz27 =
       stata[0].quiz28 = stata[0].quiz29 = stata[0].quiz30 =
       stata[0].quiz31 = stata[0].quiz32 = stata[0].quiz33 =
       stata[0].quiz34 = stata[0].quiz35 = stata[0].quiz36 =
       stata[0].quiz37 = stata[0].quiz38 = stata[0].quiz39 = 
       stata[0].quiz200 = 0;
      await Stats.db.update(session, stata);
      return stata[0];
    }

    return null;
  }

  Future<Stats?> setEmailAndUsername(Session session, {required String e, required String u}) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return null;

    // ignore: deprecated_member_use_from_same_package
    final stata = await Stats.find(
      session,
      where: (item) => item.userId.equals(userId),
    );

    if (stata[0] != null) {
      stata[0].email = e;
      stata[0].username = u;
      await Stats.db.update(session, stata);
      return stata[0];
    }

    return null;
  }

  Future<Stats?> setName(Session session, {required String n}) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return null;

    // ignore: deprecated_member_use_from_same_package
    final stata = await Stats.find(
      session,
      where: (item) => item.userId.equals(userId),
    );

    if (stata[0] != null) {
      stata[0].username = n;
      await Stats.db.update(session, stata);
      return stata[0];
    }

    return null;
  }

  Future<Stats?> setDuration(Session session, {required int t}) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return null;

    // ignore: deprecated_member_use_from_same_package
    final stata = await Stats.find(
      session,
      where: (item) => item.userId.equals(userId),
    );

    if (stata[0] != null) {
      stata[0].duration = t;
      await Stats.db.update(session, stata);
      return stata[0];
    }

    return null;
  }

  Future<Stats?> retime(Session session) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return null;

    // ignore: deprecated_member_use_from_same_package
    final stata = await Stats.find(
      session,
      where: (item) => item.userId.equals(userId),
    );

    if (stata[0] != null) {
      stata[0].lastAction = DateTime.now();
      await Stats.db.update(session, stata);
      return stata[0];
    }

    return null;
  }

  Future<bool> create(Session sess) async {
    final user = await sess.auth.authenticatedUserId;

    if (user == null) {
      return false;
    }
    //final profile = await Stats.findSingleRow(sess, where: (p) => p.userId.equals(user));

    final stat = Stats(
        userId: user,
        lastAction: DateTime.now(),
        quiz1: 0,
        quiz2: 0,
        quiz3: 0,
        quiz4: 0,
        quiz5: 0,
        quiz6: 0,
        quiz7: 0,
        quiz8: 0,
        quiz9: 0,
        quiz10: 0,
        quiz11: 0,
        quiz12: 0,
        quiz13: 0,
        quiz14: 0,
        quiz15: 0,
        quiz16: 0,
        quiz17: 0,
        quiz18: 0,
        quiz19: 0,
        quiz20: 0,
        quiz21: 0,
        quiz22: 0,
        quiz23: 0,
        quiz24: 0,
        quiz25: 0,
        quiz26: 0,
        quiz27: 0,
        quiz28: 0,
        quiz29: 0,
        quiz30: 0,
        quiz31: 0,
        quiz32: 0,
        quiz33: 0,
        quiz34: 0,
        quiz35: 0,
        quiz36: 0,
        quiz37: 0,
        quiz38: 0,
        quiz39: 0,
        quiz200: 0,
        email: "",
        username: "",
        duration: 30);

    Future<List<Stats>> futureList = list(sess);

    List<Stats> data = await futureList;
    if (data.isEmpty) {
      print(1);
      // ignore: deprecated_member_use_from_same_package
      await Stats.insert(sess, stat);
    }
    return true;
  }
}
