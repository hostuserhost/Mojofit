import 'package:hive/hive.dart';
import 'user.dart';
import 'package:mojofit/models/potion.dart';

part 'user_hive.g.dart';

@HiveType(typeId: 0)
class UserHive extends HiveObject {
  UserHive(
    this.money,
    this.xp,
    this.potions,
  );
  @HiveField(0)
  final int money;
  @HiveField(1)
  final double xp;
  @HiveField(2)
  final Map<PotionType, int> potions;

  factory UserHive.fromUser(User user) {
    return UserHive(user.money.value, user.xp.value, user.potions);
  }
}
