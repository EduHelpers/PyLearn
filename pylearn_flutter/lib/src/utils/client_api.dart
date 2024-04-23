import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:pylearn_client/pylearn_client.dart';

abstract class CliAPi {
  late Client clnt;
  late SessionManager mngr;

  Future<void> initializing();
}

class Impl extends CliAPi {
  @override
  Future<void> initializing() async {
    clnt = Client('http://$localhost:8080/',
        authenticationKeyManager: FlutterAuthenticationKeyManager())
      ..connectivityMonitor = FlutterConnectivityMonitor();

    mngr = SessionManager(caller: clnt.modules.auth);
    await mngr.initialize();
  }
}
