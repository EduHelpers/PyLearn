import 'package:get_it/get_it.dart';
import 'package:pylearn_flutter/src/utils/client_api.dart';

GetIt st = GetIt.instance;
Future<void> initSton() async {
  st.registerSingleton<CliAPi>(Impl());
  await st<CliAPi>().initializing();
}
