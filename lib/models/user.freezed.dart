// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  Observable<int> get money => throw _privateConstructorUsedError;
  Observable<double> get xp => throw _privateConstructorUsedError;
  ObservableMap<PotionType, int> get potions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {Observable<int> money,
      Observable<double> xp,
      ObservableMap<PotionType, int> potions});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? money = null,
    Object? xp = null,
    Object? potions = null,
  }) {
    return _then(_value.copyWith(
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as Observable<int>,
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as Observable<double>,
      potions: null == potions
          ? _value.potions
          : potions // ignore: cast_nullable_to_non_nullable
              as ObservableMap<PotionType, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Observable<int> money,
      Observable<double> xp,
      ObservableMap<PotionType, int> potions});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? money = null,
    Object? xp = null,
    Object? potions = null,
  }) {
    return _then(_$UserImpl(
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as Observable<int>,
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as Observable<double>,
      potions: null == potions
          ? _value.potions
          : potions // ignore: cast_nullable_to_non_nullable
              as ObservableMap<PotionType, int>,
    ));
  }
}

/// @nodoc

class _$UserImpl with DiagnosticableTreeMixin implements _User {
  const _$UserImpl(
      {required this.money, required this.xp, required this.potions});

  @override
  final Observable<int> money;
  @override
  final Observable<double> xp;
  @override
  final ObservableMap<PotionType, int> potions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(money: $money, xp: $xp, potions: $potions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('money', money))
      ..add(DiagnosticsProperty('xp', xp))
      ..add(DiagnosticsProperty('potions', potions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.xp, xp) || other.xp == xp) &&
            const DeepCollectionEquality().equals(other.potions, potions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, money, xp, const DeepCollectionEquality().hash(potions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final Observable<int> money,
      required final Observable<double> xp,
      required final ObservableMap<PotionType, int> potions}) = _$UserImpl;

  @override
  Observable<int> get money;
  @override
  Observable<double> get xp;
  @override
  ObservableMap<PotionType, int> get potions;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
