// ignore_for_file: dead_code

import 'package:pylearn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class FriendsEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<List<Friends>> list(Session session) async {
    final userId = await session.auth.authenticatedUserId;

    if (userId == null) {
      return [];
    }

    // ignore: deprecated_member_use_from_same_package
    return await Friends.find(session, where: (i) => i.userid1.equals(userId));
  }

  Future<bool> create(Session session,
      {required int userId1, required int userId2}) async {
    final userId = await session.auth.authenticatedUserId;

    if (userId == null) {
      return false;
    }

    final fr = Friends(userid1: userId1, userid2: userId2);

    // ignore: deprecated_member_use_from_same_package
    await Friends.insert(session, fr);
    return true;
  }

  Future<bool> delete(Session session, int userId2) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return false;

    final ingredient = await Friends.findSingleRow(
      session,
      where: (item) =>
          item.userid1.equals(userId) & item.userid2.equals(userId2),
    );

    if (ingredient != null) {
      await Friends.delete(session,
          where: (item) =>
              item.userid1.equals(userId) & item.userid2.equals(userId2));
      return true;
    }

    return false;
  }
}
