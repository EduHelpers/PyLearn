import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pylearn_client/pylearn_client.dart';
import 'package:flutter/material.dart';
import 'package:pylearn_flutter/src/auth/screen.dart';
import 'package:pylearn_flutter/src/comps/container.dart';
import 'package:pylearn_flutter/src/utils/stons.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSton();
  runApp(ProviderScope(
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'PyLearn',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
          primarySwatch: Colors.blue,
        ),
        home: container_widgets());
  }
}
