/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Stats extends _i1.TableRow {
  Stats._({
    int? id,
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
  }) : super(id);

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

  static final t = StatsTable();

  static const db = StatsRepository._();

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

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'userId': userId,
      'lastAction': lastAction,
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

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'userId':
        userId = value;
        return;
      case 'lastAction':
        lastAction = value;
        return;
      case 'quiz1':
        quiz1 = value;
        return;
      case 'quiz2':
        quiz2 = value;
        return;
      case 'quiz3':
        quiz3 = value;
        return;
      case 'quiz4':
        quiz4 = value;
        return;
      case 'quiz5':
        quiz5 = value;
        return;
      case 'quiz6':
        quiz6 = value;
        return;
      case 'quiz7':
        quiz7 = value;
        return;
      case 'quiz8':
        quiz8 = value;
        return;
      case 'quiz9':
        quiz9 = value;
        return;
      case 'quiz10':
        quiz10 = value;
        return;
      case 'quiz11':
        quiz11 = value;
        return;
      case 'quiz12':
        quiz12 = value;
        return;
      case 'quiz13':
        quiz13 = value;
        return;
      case 'quiz14':
        quiz14 = value;
        return;
      case 'quiz15':
        quiz15 = value;
        return;
      case 'quiz16':
        quiz16 = value;
        return;
      case 'quiz17':
        quiz17 = value;
        return;
      case 'quiz18':
        quiz18 = value;
        return;
      case 'quiz19':
        quiz19 = value;
        return;
      case 'quiz20':
        quiz20 = value;
        return;
      case 'quiz21':
        quiz21 = value;
        return;
      case 'quiz22':
        quiz22 = value;
        return;
      case 'quiz23':
        quiz23 = value;
        return;
      case 'quiz24':
        quiz24 = value;
        return;
      case 'quiz25':
        quiz25 = value;
        return;
      case 'quiz26':
        quiz26 = value;
        return;
      case 'quiz27':
        quiz27 = value;
        return;
      case 'quiz28':
        quiz28 = value;
        return;
      case 'quiz29':
        quiz29 = value;
        return;
      case 'quiz30':
        quiz30 = value;
        return;
      case 'quiz31':
        quiz31 = value;
        return;
      case 'quiz32':
        quiz32 = value;
        return;
      case 'quiz33':
        quiz33 = value;
        return;
      case 'quiz34':
        quiz34 = value;
        return;
      case 'quiz35':
        quiz35 = value;
        return;
      case 'quiz36':
        quiz36 = value;
        return;
      case 'quiz37':
        quiz37 = value;
        return;
      case 'quiz38':
        quiz38 = value;
        return;
      case 'quiz39':
        quiz39 = value;
        return;
      case 'quiz200':
        quiz200 = value;
        return;
      case 'email':
        email = value;
        return;
      case 'username':
        username = value;
        return;
      case 'duration':
        duration = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Stats>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatsTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Stats>(
      where: where != null ? where(Stats.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Stats?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatsTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Stats>(
      where: where != null ? where(Stats.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Stats?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Stats>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StatsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Stats>(
      where: where(Stats.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Stats row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Stats row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Stats row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatsTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Stats>(
      where: where != null ? where(Stats.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static StatsInclude include() {
    return StatsInclude._();
  }

  static StatsIncludeList includeList({
    _i1.WhereExpressionBuilder<StatsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StatsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StatsTable>? orderByList,
    StatsInclude? include,
  }) {
    return StatsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Stats.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Stats.t),
      include: include,
    );
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

class StatsTable extends _i1.Table {
  StatsTable({super.tableRelation}) : super(tableName: 'stats') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    lastAction = _i1.ColumnDateTime(
      'lastAction',
      this,
    );
    quiz1 = _i1.ColumnDouble(
      'quiz1',
      this,
    );
    quiz2 = _i1.ColumnDouble(
      'quiz2',
      this,
    );
    quiz3 = _i1.ColumnDouble(
      'quiz3',
      this,
    );
    quiz4 = _i1.ColumnDouble(
      'quiz4',
      this,
    );
    quiz5 = _i1.ColumnDouble(
      'quiz5',
      this,
    );
    quiz6 = _i1.ColumnDouble(
      'quiz6',
      this,
    );
    quiz7 = _i1.ColumnDouble(
      'quiz7',
      this,
    );
    quiz8 = _i1.ColumnDouble(
      'quiz8',
      this,
    );
    quiz9 = _i1.ColumnDouble(
      'quiz9',
      this,
    );
    quiz10 = _i1.ColumnDouble(
      'quiz10',
      this,
    );
    quiz11 = _i1.ColumnDouble(
      'quiz11',
      this,
    );
    quiz12 = _i1.ColumnDouble(
      'quiz12',
      this,
    );
    quiz13 = _i1.ColumnDouble(
      'quiz13',
      this,
    );
    quiz14 = _i1.ColumnDouble(
      'quiz14',
      this,
    );
    quiz15 = _i1.ColumnDouble(
      'quiz15',
      this,
    );
    quiz16 = _i1.ColumnDouble(
      'quiz16',
      this,
    );
    quiz17 = _i1.ColumnDouble(
      'quiz17',
      this,
    );
    quiz18 = _i1.ColumnDouble(
      'quiz18',
      this,
    );
    quiz19 = _i1.ColumnDouble(
      'quiz19',
      this,
    );
    quiz20 = _i1.ColumnDouble(
      'quiz20',
      this,
    );
    quiz21 = _i1.ColumnDouble(
      'quiz21',
      this,
    );
    quiz22 = _i1.ColumnDouble(
      'quiz22',
      this,
    );
    quiz23 = _i1.ColumnDouble(
      'quiz23',
      this,
    );
    quiz24 = _i1.ColumnDouble(
      'quiz24',
      this,
    );
    quiz25 = _i1.ColumnDouble(
      'quiz25',
      this,
    );
    quiz26 = _i1.ColumnDouble(
      'quiz26',
      this,
    );
    quiz27 = _i1.ColumnDouble(
      'quiz27',
      this,
    );
    quiz28 = _i1.ColumnDouble(
      'quiz28',
      this,
    );
    quiz29 = _i1.ColumnDouble(
      'quiz29',
      this,
    );
    quiz30 = _i1.ColumnDouble(
      'quiz30',
      this,
    );
    quiz31 = _i1.ColumnDouble(
      'quiz31',
      this,
    );
    quiz32 = _i1.ColumnDouble(
      'quiz32',
      this,
    );
    quiz33 = _i1.ColumnDouble(
      'quiz33',
      this,
    );
    quiz34 = _i1.ColumnDouble(
      'quiz34',
      this,
    );
    quiz35 = _i1.ColumnDouble(
      'quiz35',
      this,
    );
    quiz36 = _i1.ColumnDouble(
      'quiz36',
      this,
    );
    quiz37 = _i1.ColumnDouble(
      'quiz37',
      this,
    );
    quiz38 = _i1.ColumnDouble(
      'quiz38',
      this,
    );
    quiz39 = _i1.ColumnDouble(
      'quiz39',
      this,
    );
    quiz200 = _i1.ColumnDouble(
      'quiz200',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    username = _i1.ColumnString(
      'username',
      this,
    );
    duration = _i1.ColumnInt(
      'duration',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnDateTime lastAction;

  late final _i1.ColumnDouble quiz1;

  late final _i1.ColumnDouble quiz2;

  late final _i1.ColumnDouble quiz3;

  late final _i1.ColumnDouble quiz4;

  late final _i1.ColumnDouble quiz5;

  late final _i1.ColumnDouble quiz6;

  late final _i1.ColumnDouble quiz7;

  late final _i1.ColumnDouble quiz8;

  late final _i1.ColumnDouble quiz9;

  late final _i1.ColumnDouble quiz10;

  late final _i1.ColumnDouble quiz11;

  late final _i1.ColumnDouble quiz12;

  late final _i1.ColumnDouble quiz13;

  late final _i1.ColumnDouble quiz14;

  late final _i1.ColumnDouble quiz15;

  late final _i1.ColumnDouble quiz16;

  late final _i1.ColumnDouble quiz17;

  late final _i1.ColumnDouble quiz18;

  late final _i1.ColumnDouble quiz19;

  late final _i1.ColumnDouble quiz20;

  late final _i1.ColumnDouble quiz21;

  late final _i1.ColumnDouble quiz22;

  late final _i1.ColumnDouble quiz23;

  late final _i1.ColumnDouble quiz24;

  late final _i1.ColumnDouble quiz25;

  late final _i1.ColumnDouble quiz26;

  late final _i1.ColumnDouble quiz27;

  late final _i1.ColumnDouble quiz28;

  late final _i1.ColumnDouble quiz29;

  late final _i1.ColumnDouble quiz30;

  late final _i1.ColumnDouble quiz31;

  late final _i1.ColumnDouble quiz32;

  late final _i1.ColumnDouble quiz33;

  late final _i1.ColumnDouble quiz34;

  late final _i1.ColumnDouble quiz35;

  late final _i1.ColumnDouble quiz36;

  late final _i1.ColumnDouble quiz37;

  late final _i1.ColumnDouble quiz38;

  late final _i1.ColumnDouble quiz39;

  late final _i1.ColumnDouble quiz200;

  late final _i1.ColumnString email;

  late final _i1.ColumnString username;

  late final _i1.ColumnInt duration;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        lastAction,
        quiz1,
        quiz2,
        quiz3,
        quiz4,
        quiz5,
        quiz6,
        quiz7,
        quiz8,
        quiz9,
        quiz10,
        quiz11,
        quiz12,
        quiz13,
        quiz14,
        quiz15,
        quiz16,
        quiz17,
        quiz18,
        quiz19,
        quiz20,
        quiz21,
        quiz22,
        quiz23,
        quiz24,
        quiz25,
        quiz26,
        quiz27,
        quiz28,
        quiz29,
        quiz30,
        quiz31,
        quiz32,
        quiz33,
        quiz34,
        quiz35,
        quiz36,
        quiz37,
        quiz38,
        quiz39,
        quiz200,
        email,
        username,
        duration,
      ];
}

@Deprecated('Use StatsTable.t instead.')
StatsTable tStats = StatsTable();

class StatsInclude extends _i1.IncludeObject {
  StatsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Stats.t;
}

class StatsIncludeList extends _i1.IncludeList {
  StatsIncludeList._({
    _i1.WhereExpressionBuilder<StatsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Stats.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Stats.t;
}

class StatsRepository {
  const StatsRepository._();

  Future<List<Stats>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StatsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StatsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Stats>(
      where: where?.call(Stats.t),
      orderBy: orderBy?.call(Stats.t),
      orderByList: orderByList?.call(Stats.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Stats?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatsTable>? where,
    int? offset,
    _i1.OrderByBuilder<StatsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StatsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Stats>(
      where: where?.call(Stats.t),
      orderBy: orderBy?.call(Stats.t),
      orderByList: orderByList?.call(Stats.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Stats?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Stats>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Stats>> insert(
    _i1.Session session,
    List<Stats> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Stats>(
      rows,
      transaction: transaction,
    );
  }

  Future<Stats> insertRow(
    _i1.Session session,
    Stats row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Stats>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Stats>> update(
    _i1.Session session,
    List<Stats> rows, {
    _i1.ColumnSelections<StatsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Stats>(
      rows,
      columns: columns?.call(Stats.t),
      transaction: transaction,
    );
  }

  Future<Stats> updateRow(
    _i1.Session session,
    Stats row, {
    _i1.ColumnSelections<StatsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Stats>(
      row,
      columns: columns?.call(Stats.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Stats> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Stats>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Stats row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Stats>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StatsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Stats>(
      where: where(Stats.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StatsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Stats>(
      where: where?.call(Stats.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
