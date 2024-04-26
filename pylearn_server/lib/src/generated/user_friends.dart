/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Friends extends _i1.TableRow {
  Friends._({
    int? id,
    required this.userid1,
    required this.userid2,
  }) : super(id);

  factory Friends({
    int? id,
    required int userid1,
    required int userid2,
  }) = _FriendsImpl;

  factory Friends.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Friends(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userid1:
          serializationManager.deserialize<int>(jsonSerialization['userid1']),
      userid2:
          serializationManager.deserialize<int>(jsonSerialization['userid2']),
    );
  }

  static final t = FriendsTable();

  static const db = FriendsRepository._();

  int userid1;

  int userid2;

  @override
  _i1.Table get table => t;

  Friends copyWith({
    int? id,
    int? userid1,
    int? userid2,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userid1': userid1,
      'userid2': userid2,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'userid1': userid1,
      'userid2': userid2,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'userid1': userid1,
      'userid2': userid2,
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
      case 'userid1':
        userid1 = value;
        return;
      case 'userid2':
        userid2 = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Friends>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Friends>(
      where: where != null ? where(Friends.t) : null,
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
  static Future<Friends?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Friends>(
      where: where != null ? where(Friends.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Friends?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Friends>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FriendsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Friends>(
      where: where(Friends.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Friends row, {
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
    Friends row, {
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
    Friends row, {
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
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Friends>(
      where: where != null ? where(Friends.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FriendsInclude include() {
    return FriendsInclude._();
  }

  static FriendsIncludeList includeList({
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FriendsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendsTable>? orderByList,
    FriendsInclude? include,
  }) {
    return FriendsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Friends.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Friends.t),
      include: include,
    );
  }
}

class _Undefined {}

class _FriendsImpl extends Friends {
  _FriendsImpl({
    int? id,
    required int userid1,
    required int userid2,
  }) : super._(
          id: id,
          userid1: userid1,
          userid2: userid2,
        );

  @override
  Friends copyWith({
    Object? id = _Undefined,
    int? userid1,
    int? userid2,
  }) {
    return Friends(
      id: id is int? ? id : this.id,
      userid1: userid1 ?? this.userid1,
      userid2: userid2 ?? this.userid2,
    );
  }
}

class FriendsTable extends _i1.Table {
  FriendsTable({super.tableRelation}) : super(tableName: 'friends') {
    userid1 = _i1.ColumnInt(
      'userid1',
      this,
    );
    userid2 = _i1.ColumnInt(
      'userid2',
      this,
    );
  }

  late final _i1.ColumnInt userid1;

  late final _i1.ColumnInt userid2;

  @override
  List<_i1.Column> get columns => [
        id,
        userid1,
        userid2,
      ];
}

@Deprecated('Use FriendsTable.t instead.')
FriendsTable tFriends = FriendsTable();

class FriendsInclude extends _i1.IncludeObject {
  FriendsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Friends.t;
}

class FriendsIncludeList extends _i1.IncludeList {
  FriendsIncludeList._({
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Friends.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Friends.t;
}

class FriendsRepository {
  const FriendsRepository._();

  Future<List<Friends>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FriendsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Friends>(
      where: where?.call(Friends.t),
      orderBy: orderBy?.call(Friends.t),
      orderByList: orderByList?.call(Friends.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Friends?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    int? offset,
    _i1.OrderByBuilder<FriendsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Friends>(
      where: where?.call(Friends.t),
      orderBy: orderBy?.call(Friends.t),
      orderByList: orderByList?.call(Friends.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Friends?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Friends>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Friends>> insert(
    _i1.Session session,
    List<Friends> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Friends>(
      rows,
      transaction: transaction,
    );
  }

  Future<Friends> insertRow(
    _i1.Session session,
    Friends row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Friends>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Friends>> update(
    _i1.Session session,
    List<Friends> rows, {
    _i1.ColumnSelections<FriendsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Friends>(
      rows,
      columns: columns?.call(Friends.t),
      transaction: transaction,
    );
  }

  Future<Friends> updateRow(
    _i1.Session session,
    Friends row, {
    _i1.ColumnSelections<FriendsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Friends>(
      row,
      columns: columns?.call(Friends.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Friends> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Friends>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Friends row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Friends>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FriendsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Friends>(
      where: where(Friends.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Friends>(
      where: where?.call(Friends.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
