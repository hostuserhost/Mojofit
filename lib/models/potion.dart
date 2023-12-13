import 'package:hive/hive.dart';
part 'potion.g.dart';

@HiveType(typeId: 1)
enum PotionType {
  @HiveField(0)
  minhealth(
      id: 0,
      name: 'Маленькое зелье здоровья',
      picture: 'assets/images/ui/potion1.png',
      cost: 20),
  @HiveField(1)
  midhealth(
      id: 1,
      name: 'Среднее зелье здоровья',
      picture: 'assets/images/ui/potion2.png',
      cost: 20),
  @HiveField(2)
  highhealth(
      id: 1,
      name: 'Максимально зелье здоровья',
      picture: 'assets/images/ui/potion3.png',
      cost: 20);

  const PotionType(
      {required this.id,
      required this.name,
      required this.picture,
      required this.cost});
  final int id;
  final String name;
  final String picture;
  final int cost;
}
