import 'package:flame/components.dart';
import 'package:mojofit/game/mojo_game.dart';
import 'package:mojofit/game/monster_mojo.dart';
import 'package:mojofit/states/globalState.dart';

enum PlayerStates {
  player_idle,
  player_attack_1,
}

Map<PlayerStates, SpriteAnimation>? animationMap = {
  PlayerStates.player_idle: SpriteAnimation.fromFrameData(
      MojoGame().images.fromCache("player/idle.png"),
      SpriteAnimationData.sequenced(
        textureSize: Vector2(512, 512),
        amount: 6,
        amountPerRow: 4,
        stepTime: 0.19,
      )),
  PlayerStates.player_attack_1: SpriteAnimation.fromFrameData(
      MojoGame().images.fromCache("player/attack.png"),
      SpriteAnimationData.sequenced(
        textureSize: Vector2(512, 512),
        amount: 6,
        amountPerRow: 4,
        loop: true,
        stepTime: 0.075,
      )),
};

class PlayerMojo extends SpriteAnimationGroupComponent<PlayerStates> {
  final Timer attackTimer = Timer(0.35);

  PlayerMojo()
      : super(
            size: Vector2(500, 500),
            position: Vector2(-150, 150),
            animations: animationMap,
            current: PlayerStates.player_idle);
  @override
  void onLoad() {
    attackTimer.onTick = () {
      current = PlayerStates.player_idle;
    };
  }

  void attackAnim(PlayerStates selanim) async {
    current = selanim;
    if (globalState.mojoXP <= 0) {
      globalState.mojoGameOverlay = 3;
      globalState.user.money.value = globalState.user.money.value + 100;
      globalState.enableDetection = false;
    }
    globalState.mojoXP = globalState.mojoXP - 0.5;
    attackTimer.start();
  }

  void update(double dt) {
    attackTimer.update(dt);
    super.update(dt);
  }
}
