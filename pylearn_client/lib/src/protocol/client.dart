/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:pylearn_client/src/protocol/user_friends.dart' as _i3;
import 'package:pylearn_client/src/protocol/user_quizStats.dart' as _i4;
import 'package:serverpod_auth_client/module.dart' as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointFriends extends _i1.EndpointRef {
  EndpointFriends(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'friends';

  _i2.Future<List<_i3.Friends>> list() =>
      caller.callServerEndpoint<List<_i3.Friends>>(
        'friends',
        'list',
        {},
      );

  _i2.Future<bool> create({
    required String userId2,
    required String userName2,
  }) =>
      caller.callServerEndpoint<bool>(
        'friends',
        'create',
        {
          'userId2': userId2,
          'userName2': userName2,
        },
      );

  _i2.Future<bool> delete({required String userId2}) =>
      caller.callServerEndpoint<bool>(
        'friends',
        'delete',
        {'userId2': userId2},
      );
}

/// {@category Endpoint}
class EndpointStats extends _i1.EndpointRef {
  EndpointStats(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'stats';

  _i2.Future<List<_i4.Stats>> list() =>
      caller.callServerEndpoint<List<_i4.Stats>>(
        'stats',
        'list',
        {},
      );

  _i2.Future<List<_i4.Stats>> listAll() =>
      caller.callServerEndpoint<List<_i4.Stats>>(
        'stats',
        'listAll',
        {},
      );

  _i2.Future<_i4.Stats?> ExistingEmail({required String email}) =>
      caller.callServerEndpoint<_i4.Stats?>(
        'stats',
        'ExistingEmail',
        {'email': email},
      );

  _i2.Future<_i4.Stats?> restat({
    required String s,
    required double d,
  }) =>
      caller.callServerEndpoint<_i4.Stats?>(
        'stats',
        'restat',
        {
          's': s,
          'd': d,
        },
      );

  _i2.Future<_i4.Stats?> resetStats() => caller.callServerEndpoint<_i4.Stats?>(
        'stats',
        'resetStats',
        {},
      );

  _i2.Future<_i4.Stats?> setEmailAndUsername({
    required String e,
    required String u,
  }) =>
      caller.callServerEndpoint<_i4.Stats?>(
        'stats',
        'setEmailAndUsername',
        {
          'e': e,
          'u': u,
        },
      );

  _i2.Future<_i4.Stats?> setPrivate({required double d}) =>
      caller.callServerEndpoint<_i4.Stats?>(
        'stats',
        'setPrivate',
        {'d': d},
      );

  _i2.Future<_i4.Stats?> setName({required String n}) =>
      caller.callServerEndpoint<_i4.Stats?>(
        'stats',
        'setName',
        {'n': n},
      );

  _i2.Future<_i4.Stats?> setDuration({required int t}) =>
      caller.callServerEndpoint<_i4.Stats?>(
        'stats',
        'setDuration',
        {'t': t},
      );

  _i2.Future<_i4.Stats?> retime() => caller.callServerEndpoint<_i4.Stats?>(
        'stats',
        'retime',
        {},
      );

  _i2.Future<bool> create() => caller.callServerEndpoint<bool>(
        'stats',
        'create',
        {},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i5.Caller(client);
  }

  late final _i5.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    example = EndpointExample(this);
    friends = EndpointFriends(this);
    stats = EndpointStats(this);
    modules = _Modules(this);
  }

  late final EndpointExample example;

  late final EndpointFriends friends;

  late final EndpointStats stats;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'friends': friends,
        'stats': stats,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
