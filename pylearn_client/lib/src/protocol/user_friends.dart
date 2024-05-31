/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Friends extends _i1.SerializableEntity {
  Friends._({
    this.id,
    required this.userid1,
    required this.userid2,
    required this.username2,
  });

  factory Friends({
    int? id,
    required int userid1,
    required String userid2,
    required String username2,
  }) = _FriendsImpl;

  factory Friends.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Friends(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userid1:
          serializationManager.deserialize<int>(jsonSerialization['userid1']),
      userid2: serializationManager
          .deserialize<String>(jsonSerialization['userid2']),
      username2: serializationManager
          .deserialize<String>(jsonSerialization['username2']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userid1;

  String userid2;

  String username2;

  Friends copyWith({
    int? id,
    int? userid1,
    String? userid2,
    String? username2,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userid1': userid1,
      'userid2': userid2,
      'username2': username2,
    };
  }
}

class _Undefined {}

class _FriendsImpl extends Friends {
  _FriendsImpl({
    int? id,
    required int userid1,
    required String userid2,
    required String username2,
  }) : super._(
          id: id,
          userid1: userid1,
          userid2: userid2,
          username2: username2,
        );

  @override
  Friends copyWith({
    Object? id = _Undefined,
    int? userid1,
    String? userid2,
    String? username2,
  }) {
    return Friends(
      id: id is int? ? id : this.id,
      userid1: userid1 ?? this.userid1,
      userid2: userid2 ?? this.userid2,
      username2: username2 ?? this.username2,
    );
  }
}
