import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'potion.dart';
import 'package:mojofit/models/user_hive.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User(
      {required Observable<int> money,
      required Observable<double> xp,
      required ObservableMap<PotionType, int> potions}) = _User;
  factory User.fromUserHive(UserHive user) {
    return User(
        money: Observable(user.money),
        xp: Observable(user.xp),
        potions: ObservableMap.of(user.potions));
  }
}
