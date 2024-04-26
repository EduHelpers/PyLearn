/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/friends_endpoint.dart' as _i3;
import '../endpoints/stats_endpoint.dart' as _i4;
import 'package:serverpod_auth_server/module.dart' as _i5;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'friends': _i3.FriendsEndpoint()
        ..initialize(
          server,
          'friends',
          null,
        ),
      'stats': _i4.StatsEndpoint()
        ..initialize(
          server,
          'stats',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['friends'] = _i1.EndpointConnector(
      name: 'friends',
      endpoint: endpoints['friends']!,
      methodConnectors: {
        'list': _i1.MethodConnector(
          name: 'list',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friends'] as _i3.FriendsEndpoint).list(session),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'userId1': _i1.ParameterDescription(
              name: 'userId1',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'userId2': _i1.ParameterDescription(
              name: 'userId2',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friends'] as _i3.FriendsEndpoint).create(
            session,
            userId1: params['userId1'],
            userId2: params['userId2'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'userId2': _i1.ParameterDescription(
              name: 'userId2',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friends'] as _i3.FriendsEndpoint).delete(
            session,
            params['userId2'],
          ),
        ),
      },
    );
    connectors['stats'] = _i1.EndpointConnector(
      name: 'stats',
      endpoint: endpoints['stats']!,
      methodConnectors: {
        'list': _i1.MethodConnector(
          name: 'list',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stats'] as _i4.StatsEndpoint).list(session),
        ),
        'ExistingEmail': _i1.MethodConnector(
          name: 'ExistingEmail',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stats'] as _i4.StatsEndpoint).ExistingEmail(
            session,
            email: params['email'],
          ),
        ),
        'restat': _i1.MethodConnector(
          name: 'restat',
          params: {
            's': _i1.ParameterDescription(
              name: 's',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'd': _i1.ParameterDescription(
              name: 'd',
              type: _i1.getType<double>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stats'] as _i4.StatsEndpoint).restat(
            session,
            s: params['s'],
            d: params['d'],
          ),
        ),
        'resetStats': _i1.MethodConnector(
          name: 'resetStats',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stats'] as _i4.StatsEndpoint).resetStats(session),
        ),
        'setEmailAndUsername': _i1.MethodConnector(
          name: 'setEmailAndUsername',
          params: {
            'e': _i1.ParameterDescription(
              name: 'e',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'u': _i1.ParameterDescription(
              name: 'u',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stats'] as _i4.StatsEndpoint).setEmailAndUsername(
            session,
            e: params['e'],
            u: params['u'],
          ),
        ),
        'setName': _i1.MethodConnector(
          name: 'setName',
          params: {
            'n': _i1.ParameterDescription(
              name: 'n',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stats'] as _i4.StatsEndpoint).setName(
            session,
            n: params['n'],
          ),
        ),
        'setDuration': _i1.MethodConnector(
          name: 'setDuration',
          params: {
            't': _i1.ParameterDescription(
              name: 't',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stats'] as _i4.StatsEndpoint).setDuration(
            session,
            t: params['t'],
          ),
        ),
        'retime': _i1.MethodConnector(
          name: 'retime',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stats'] as _i4.StatsEndpoint).retime(session),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stats'] as _i4.StatsEndpoint).create(session),
        ),
      },
    );
    modules['serverpod_auth'] = _i5.Endpoints()..initializeEndpoints(server);
  }
}
