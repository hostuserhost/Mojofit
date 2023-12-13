import 'package:flame/game.dart';
import 'package:mojofit/game/bg_mojo.dart';
import 'package:mojofit/game/monster_mojo.dart';
import 'package:mojofit/game/player_mojo.dart';

final PlayerMojoVar = PlayerMojo();
final MonsterMojoVar = MonsterMojo();
late final BackgroundMojo BackgroundMojoVar;
final MojoGameVar = MojoGame();

List<String> imageStage1 = [
  'player/attack.png',
  'player/idle.png',
  'bg/bg.png',
  'monster1/hit.png',
  'monster1/idle.png',
  'monster1/death.png'
];

List<String> imageStage2 = [
  'bg/bg2.png',
  'monster2/hit.png',
  'monster2/idle.png',
  'monster2/death.png',
  'player/attack.png',
  'player/idle.png'
];

List<String> imageStage3 = [
  'player/attack.png',
  'player/idle.png',
  'bg/bg3.png',
  'monster3/hit.png',
  'monster3/idle.png',
  'monster3/death.png'
];

class MojoGame extends FlameGame {
  @override
  set debugMode(bool _debugMode) {
    super.debugMode = true;
  }

  @override
  Future<void> onLoad() async {
    await images.loadAll(imageStage1);
    await images.loadAll(imageStage2);
    await images.loadAll(imageStage3);
    BackgroundMojoVar =
        BackgroundMojo(sized: size, imaged: images.fromCache('bg/bg.png'));
    add(BackgroundMojoVar);
    add(PlayerMojoVar);
    add(MonsterMojoVar);
  }
}
