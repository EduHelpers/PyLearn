// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: depend_on_referenced_packages
import 'package:serverpod_auth_client/module.dart';

part 'sess_models.freezed.dart';

@freezed
class Sess with _$Sess {
  const Sess._();
  factory Sess({
    UserInfo? u,
  }) = _Sess;

  bool get isauth {
    return u != null;
  }
}
