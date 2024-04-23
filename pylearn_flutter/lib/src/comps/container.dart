import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/auth/screen.dart';
import 'package:pylearn_flutter/src/comps/base.dart';
import 'package:pylearn_flutter/src/provs/session.dart';
import 'package:pylearn_flutter/src/screen/home_screen.dart';

// ignore: camel_case_types
class container_widgets extends Base {
  const container_widgets({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.watch(prov).isauth) {
      return const NavigationScreen();
    } else {
      return const Auth();
    }
  }
}
