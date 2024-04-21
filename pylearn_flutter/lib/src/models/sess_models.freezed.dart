// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sess_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Sess {
  UserInfo? get u => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessCopyWith<Sess> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessCopyWith<$Res> {
  factory $SessCopyWith(Sess value, $Res Function(Sess) then) =
      _$SessCopyWithImpl<$Res, Sess>;
  @useResult
  $Res call({UserInfo? u});
}

/// @nodoc
class _$SessCopyWithImpl<$Res, $Val extends Sess>
    implements $SessCopyWith<$Res> {
  _$SessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? u = freezed,
  }) {
    return _then(_value.copyWith(
      u: freezed == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessImplCopyWith<$Res> implements $SessCopyWith<$Res> {
  factory _$$SessImplCopyWith(
          _$SessImpl value, $Res Function(_$SessImpl) then) =
      __$$SessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserInfo? u});
}

/// @nodoc
class __$$SessImplCopyWithImpl<$Res>
    extends _$SessCopyWithImpl<$Res, _$SessImpl>
    implements _$$SessImplCopyWith<$Res> {
  __$$SessImplCopyWithImpl(_$SessImpl _value, $Res Function(_$SessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? u = freezed,
  }) {
    return _then(_$SessImpl(
      u: freezed == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
    ));
  }
}

/// @nodoc

class _$SessImpl extends _Sess {
  _$SessImpl({this.u}) : super._();

  @override
  final UserInfo? u;

  @override
  String toString() {
    return 'Sess(u: $u)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessImpl &&
            (identical(other.u, u) || other.u == u));
  }

  @override
  int get hashCode => Object.hash(runtimeType, u);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessImplCopyWith<_$SessImpl> get copyWith =>
      __$$SessImplCopyWithImpl<_$SessImpl>(this, _$identity);
}

abstract class _Sess extends Sess {
  factory _Sess({final UserInfo? u}) = _$SessImpl;
  _Sess._() : super._();

  @override
  UserInfo? get u;
  @override
  @JsonKey(ignore: true)
  _$$SessImplCopyWith<_$SessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
