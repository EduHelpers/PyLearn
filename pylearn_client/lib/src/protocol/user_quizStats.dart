/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Stats extends _i1.SerializableEntity {
  Stats._({
    this.id,
    required this.userId,
    required this.lastAction,
    required this.quiz1,
    required this.quiz2,
    required this.quiz3,
    required this.quiz4,
    required this.quiz5,
    required this.quiz6,
    required this.quiz7,
    required this.quiz8,
    required this.quiz9,
    required this.quiz10,
    required this.quiz11,
    required this.quiz12,
    required this.quiz13,
    required this.quiz14,
    required this.quiz15,
    required this.quiz16,
    required this.quiz17,
    required this.quiz18,
    required this.quiz19,
    required this.quiz20,
    required this.quiz21,
    required this.quiz22,
    required this.quiz23,
    required this.quiz24,
    required this.quiz25,
    required this.quiz26,
    required this.quiz27,
    required this.quiz28,
    required this.quiz29,
    required this.quiz30,
    required this.quiz31,
    required this.quiz32,
    required this.quiz33,
    required this.quiz34,
    required this.quiz35,
    required this.quiz36,
    required this.quiz37,
    required this.quiz38,
    required this.quiz39,
    required this.quiz200,
    required this.email,
    required this.username,
    required this.duration,
  });

  factory Stats({
    int? id,
    required int userId,
    required DateTime lastAction,
    required double quiz1,
    required double quiz2,
    required double quiz3,
    required double quiz4,
    required double quiz5,
    required double quiz6,
    required double quiz7,
    required double quiz8,
    required double quiz9,
    required double quiz10,
    required double quiz11,
    required double quiz12,
    required double quiz13,
    required double quiz14,
    required double quiz15,
    required double quiz16,
    required double quiz17,
    required double quiz18,
    required double quiz19,
    required double quiz20,
    required double quiz21,
    required double quiz22,
    required double quiz23,
    required double quiz24,
    required double quiz25,
    required double quiz26,
    required double quiz27,
    required double quiz28,
    required double quiz29,
    required double quiz30,
    required double quiz31,
    required double quiz32,
    required double quiz33,
    required double quiz34,
    required double quiz35,
    required double quiz36,
    required double quiz37,
    required double quiz38,
    required double quiz39,
    required double quiz200,
    required String email,
    required String username,
    required int duration,
  }) = _StatsImpl;

  factory Stats.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Stats(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      lastAction: serializationManager
          .deserialize<DateTime>(jsonSerialization['lastAction']),
      quiz1:
          serializationManager.deserialize<double>(jsonSerialization['quiz1']),
      quiz2:
          serializationManager.deserialize<double>(jsonSerialization['quiz2']),
      quiz3:
          serializationManager.deserialize<double>(jsonSerialization['quiz3']),
      quiz4:
          serializationManager.deserialize<double>(jsonSerialization['quiz4']),
      quiz5:
          serializationManager.deserialize<double>(jsonSerialization['quiz5']),
      quiz6:
          serializationManager.deserialize<double>(jsonSerialization['quiz6']),
      quiz7:
          serializationManager.deserialize<double>(jsonSerialization['quiz7']),
      quiz8:
          serializationManager.deserialize<double>(jsonSerialization['quiz8']),
      quiz9:
          serializationManager.deserialize<double>(jsonSerialization['quiz9']),
      quiz10:
          serializationManager.deserialize<double>(jsonSerialization['quiz10']),
      quiz11:
          serializationManager.deserialize<double>(jsonSerialization['quiz11']),
      quiz12:
          serializationManager.deserialize<double>(jsonSerialization['quiz12']),
      quiz13:
          serializationManager.deserialize<double>(jsonSerialization['quiz13']),
      quiz14:
          serializationManager.deserialize<double>(jsonSerialization['quiz14']),
      quiz15:
          serializationManager.deserialize<double>(jsonSerialization['quiz15']),
      quiz16:
          serializationManager.deserialize<double>(jsonSerialization['quiz16']),
      quiz17:
          serializationManager.deserialize<double>(jsonSerialization['quiz17']),
      quiz18:
          serializationManager.deserialize<double>(jsonSerialization['quiz18']),
      quiz19:
          serializationManager.deserialize<double>(jsonSerialization['quiz19']),
      quiz20:
          serializationManager.deserialize<double>(jsonSerialization['quiz20']),
      quiz21:
          serializationManager.deserialize<double>(jsonSerialization['quiz21']),
      quiz22:
          serializationManager.deserialize<double>(jsonSerialization['quiz22']),
      quiz23:
          serializationManager.deserialize<double>(jsonSerialization['quiz23']),
      quiz24:
          serializationManager.deserialize<double>(jsonSerialization['quiz24']),
      quiz25:
          serializationManager.deserialize<double>(jsonSerialization['quiz25']),
      quiz26:
          serializationManager.deserialize<double>(jsonSerialization['quiz26']),
      quiz27:
          serializationManager.deserialize<double>(jsonSerialization['quiz27']),
      quiz28:
          serializationManager.deserialize<double>(jsonSerialization['quiz28']),
      quiz29:
          serializationManager.deserialize<double>(jsonSerialization['quiz29']),
      quiz30:
          serializationManager.deserialize<double>(jsonSerialization['quiz30']),
      quiz31:
          serializationManager.deserialize<double>(jsonSerialization['quiz31']),
      quiz32:
          serializationManager.deserialize<double>(jsonSerialization['quiz32']),
      quiz33:
          serializationManager.deserialize<double>(jsonSerialization['quiz33']),
      quiz34:
          serializationManager.deserialize<double>(jsonSerialization['quiz34']),
      quiz35:
          serializationManager.deserialize<double>(jsonSerialization['quiz35']),
      quiz36:
          serializationManager.deserialize<double>(jsonSerialization['quiz36']),
      quiz37:
          serializationManager.deserialize<double>(jsonSerialization['quiz37']),
      quiz38:
          serializationManager.deserialize<double>(jsonSerialization['quiz38']),
      quiz39:
          serializationManager.deserialize<double>(jsonSerialization['quiz39']),
      quiz200: serializationManager
          .deserialize<double>(jsonSerialization['quiz200']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      username: serializationManager
          .deserialize<String>(jsonSerialization['username']),
      duration:
          serializationManager.deserialize<int>(jsonSerialization['duration']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  DateTime lastAction;

  double quiz1;

  double quiz2;

  double quiz3;

  double quiz4;

  double quiz5;

  double quiz6;

  double quiz7;

  double quiz8;

  double quiz9;

  double quiz10;

  double quiz11;

  double quiz12;

  double quiz13;

  double quiz14;

  double quiz15;

  double quiz16;

  double quiz17;

  double quiz18;

  double quiz19;

  double quiz20;

  double quiz21;

  double quiz22;

  double quiz23;

  double quiz24;

  double quiz25;

  double quiz26;

  double quiz27;

  double quiz28;

  double quiz29;

  double quiz30;

  double quiz31;

  double quiz32;

  double quiz33;

  double quiz34;

  double quiz35;

  double quiz36;

  double quiz37;

  double quiz38;

  double quiz39;

  double quiz200;

  String email;

  String username;

  int duration;

  Stats copyWith({
    int? id,
    int? userId,
    DateTime? lastAction,
    double? quiz1,
    double? quiz2,
    double? quiz3,
    double? quiz4,
    double? quiz5,
    double? quiz6,
    double? quiz7,
    double? quiz8,
    double? quiz9,
    double? quiz10,
    double? quiz11,
    double? quiz12,
    double? quiz13,
    double? quiz14,
    double? quiz15,
    double? quiz16,
    double? quiz17,
    double? quiz18,
    double? quiz19,
    double? quiz20,
    double? quiz21,
    double? quiz22,
    double? quiz23,
    double? quiz24,
    double? quiz25,
    double? quiz26,
    double? quiz27,
    double? quiz28,
    double? quiz29,
    double? quiz30,
    double? quiz31,
    double? quiz32,
    double? quiz33,
    double? quiz34,
    double? quiz35,
    double? quiz36,
    double? quiz37,
    double? quiz38,
    double? quiz39,
    double? quiz200,
    String? email,
    String? username,
    int? duration,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'lastAction': lastAction.toJson(),
      'quiz1': quiz1,
      'quiz2': quiz2,
      'quiz3': quiz3,
      'quiz4': quiz4,
      'quiz5': quiz5,
      'quiz6': quiz6,
      'quiz7': quiz7,
      'quiz8': quiz8,
      'quiz9': quiz9,
      'quiz10': quiz10,
      'quiz11': quiz11,
      'quiz12': quiz12,
      'quiz13': quiz13,
      'quiz14': quiz14,
      'quiz15': quiz15,
      'quiz16': quiz16,
      'quiz17': quiz17,
      'quiz18': quiz18,
      'quiz19': quiz19,
      'quiz20': quiz20,
      'quiz21': quiz21,
      'quiz22': quiz22,
      'quiz23': quiz23,
      'quiz24': quiz24,
      'quiz25': quiz25,
      'quiz26': quiz26,
      'quiz27': quiz27,
      'quiz28': quiz28,
      'quiz29': quiz29,
      'quiz30': quiz30,
      'quiz31': quiz31,
      'quiz32': quiz32,
      'quiz33': quiz33,
      'quiz34': quiz34,
      'quiz35': quiz35,
      'quiz36': quiz36,
      'quiz37': quiz37,
      'quiz38': quiz38,
      'quiz39': quiz39,
      'quiz200': quiz200,
      'email': email,
      'username': username,
      'duration': duration,
    };
  }
}

class _Undefined {}

class _StatsImpl extends Stats {
  _StatsImpl({
    int? id,
    required int userId,
    required DateTime lastAction,
    required double quiz1,
    required double quiz2,
    required double quiz3,
    required double quiz4,
    required double quiz5,
    required double quiz6,
    required double quiz7,
    required double quiz8,
    required double quiz9,
    required double quiz10,
    required double quiz11,
    required double quiz12,
    required double quiz13,
    required double quiz14,
    required double quiz15,
    required double quiz16,
    required double quiz17,
    required double quiz18,
    required double quiz19,
    required double quiz20,
    required double quiz21,
    required double quiz22,
    required double quiz23,
    required double quiz24,
    required double quiz25,
    required double quiz26,
    required double quiz27,
    required double quiz28,
    required double quiz29,
    required double quiz30,
    required double quiz31,
    required double quiz32,
    required double quiz33,
    required double quiz34,
    required double quiz35,
    required double quiz36,
    required double quiz37,
    required double quiz38,
    required double quiz39,
    required double quiz200,
    required String email,
    required String username,
    required int duration,
  }) : super._(
          id: id,
          userId: userId,
          lastAction: lastAction,
          quiz1: quiz1,
          quiz2: quiz2,
          quiz3: quiz3,
          quiz4: quiz4,
          quiz5: quiz5,
          quiz6: quiz6,
          quiz7: quiz7,
          quiz8: quiz8,
          quiz9: quiz9,
          quiz10: quiz10,
          quiz11: quiz11,
          quiz12: quiz12,
          quiz13: quiz13,
          quiz14: quiz14,
          quiz15: quiz15,
          quiz16: quiz16,
          quiz17: quiz17,
          quiz18: quiz18,
          quiz19: quiz19,
          quiz20: quiz20,
          quiz21: quiz21,
          quiz22: quiz22,
          quiz23: quiz23,
          quiz24: quiz24,
          quiz25: quiz25,
          quiz26: quiz26,
          quiz27: quiz27,
          quiz28: quiz28,
          quiz29: quiz29,
          quiz30: quiz30,
          quiz31: quiz31,
          quiz32: quiz32,
          quiz33: quiz33,
          quiz34: quiz34,
          quiz35: quiz35,
          quiz36: quiz36,
          quiz37: quiz37,
          quiz38: quiz38,
          quiz39: quiz39,
          quiz200: quiz200,
          email: email,
          username: username,
          duration: duration,
        );

  @override
  Stats copyWith({
    Object? id = _Undefined,
    int? userId,
    DateTime? lastAction,
    double? quiz1,
    double? quiz2,
    double? quiz3,
    double? quiz4,
    double? quiz5,
    double? quiz6,
    double? quiz7,
    double? quiz8,
    double? quiz9,
    double? quiz10,
    double? quiz11,
    double? quiz12,
    double? quiz13,
    double? quiz14,
    double? quiz15,
    double? quiz16,
    double? quiz17,
    double? quiz18,
    double? quiz19,
    double? quiz20,
    double? quiz21,
    double? quiz22,
    double? quiz23,
    double? quiz24,
    double? quiz25,
    double? quiz26,
    double? quiz27,
    double? quiz28,
    double? quiz29,
    double? quiz30,
    double? quiz31,
    double? quiz32,
    double? quiz33,
    double? quiz34,
    double? quiz35,
    double? quiz36,
    double? quiz37,
    double? quiz38,
    double? quiz39,
    double? quiz200,
    String? email,
    String? username,
    int? duration,
  }) {
    return Stats(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      lastAction: lastAction ?? this.lastAction,
      quiz1: quiz1 ?? this.quiz1,
      quiz2: quiz2 ?? this.quiz2,
      quiz3: quiz3 ?? this.quiz3,
      quiz4: quiz4 ?? this.quiz4,
      quiz5: quiz5 ?? this.quiz5,
      quiz6: quiz6 ?? this.quiz6,
      quiz7: quiz7 ?? this.quiz7,
      quiz8: quiz8 ?? this.quiz8,
      quiz9: quiz9 ?? this.quiz9,
      quiz10: quiz10 ?? this.quiz10,
      quiz11: quiz11 ?? this.quiz11,
      quiz12: quiz12 ?? this.quiz12,
      quiz13: quiz13 ?? this.quiz13,
      quiz14: quiz14 ?? this.quiz14,
      quiz15: quiz15 ?? this.quiz15,
      quiz16: quiz16 ?? this.quiz16,
      quiz17: quiz17 ?? this.quiz17,
      quiz18: quiz18 ?? this.quiz18,
      quiz19: quiz19 ?? this.quiz19,
      quiz20: quiz20 ?? this.quiz20,
      quiz21: quiz21 ?? this.quiz21,
      quiz22: quiz22 ?? this.quiz22,
      quiz23: quiz23 ?? this.quiz23,
      quiz24: quiz24 ?? this.quiz24,
      quiz25: quiz25 ?? this.quiz25,
      quiz26: quiz26 ?? this.quiz26,
      quiz27: quiz27 ?? this.quiz27,
      quiz28: quiz28 ?? this.quiz28,
      quiz29: quiz29 ?? this.quiz29,
      quiz30: quiz30 ?? this.quiz30,
      quiz31: quiz31 ?? this.quiz31,
      quiz32: quiz32 ?? this.quiz32,
      quiz33: quiz33 ?? this.quiz33,
      quiz34: quiz34 ?? this.quiz34,
      quiz35: quiz35 ?? this.quiz35,
      quiz36: quiz36 ?? this.quiz36,
      quiz37: quiz37 ?? this.quiz37,
      quiz38: quiz38 ?? this.quiz38,
      quiz39: quiz39 ?? this.quiz39,
      quiz200: quiz200 ?? this.quiz200,
      email: email ?? this.email,
      username: username ?? this.username,
      duration: duration ?? this.duration,
    );
  }
}
