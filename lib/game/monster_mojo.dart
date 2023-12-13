import 'package:flame/components.dart';
import 'package:mojofit/game/mojo_game.dart';

enum MonsterStates { monster1_idle, monster1_hit, monster1_death }

Map<MonsterStates, SpriteAnimation> stage1animationMap = {
  MonsterStates.monster1_idle: SpriteAnimation.fromFrameData(
      MojoGame().images.fromCache("monster1/idle.png"),
      SpriteAnimationData.sequenced(
        textureSize: Vector2(512, 512),
        amount: 5,
        amountPerRow: 4,
        stepTime: 0.1,
      )),
  MonsterStates.monster1_hit: SpriteAnimation.fromFrameData(
      MojoGame().images.fromCache("monster1/hit.png"),
      SpriteAnimationData.sequenced(
        textureSize: Vector2(512, 512),
        amount: 4,
        amountPerRow: 3,
        loop: true,
        stepTime: 0.1,
      )),
  MonsterStates.monster1_death: SpriteAnimation.fromFrameData(
      MojoGame().images.fromCache("monster1/death.png"),
      SpriteAnimationData.sequenced(
        textureSize: Vector2(512, 512),
        amount: 8,
        amountPerRow: 3,
        loop: false,
        stepTime: 0.16,
      )),
};

Map<MonsterStates, SpriteAnimation> stage2animationMap = {
  MonsterStates.monster1_idle: SpriteAnimation.fromFrameData(
      MojoGame().images.fromCache("monster2/idle.png"),
      SpriteAnimationData.sequenced(
        textureSize: Vector2(512, 512),
        amount: 5,
        amountPerRow: 4,
        stepTime: 0.1,
      )),
  MonsterStates.monster1_hit: SpriteAnimation.fromFrameData(
      MojoGame().images.fromCache("monster2/hit.png"),
      SpriteAnimationData.sequenced(
        textureSize: Vector2(512, 512),
        amount: 4,
        amountPerRow: 3,
        loop: true,
        stepTime: 0.1,
      )),
  MonsterStates.monster1_death: SpriteAnimation.fromFrameData(
      MojoGame().images.fromCache("monster2/death.png"),
      SpriteAnimationData.sequenced(
        textureSize: Vector2(512, 512),
        amount: 8,
        amountPerRow: 3,
        loop: false,
        stepTime: 0.16,
      )),
};

Map<MonsterStates, SpriteAnimation> stage3animationMap = {
  MonsterStates.monster1_idle: SpriteAnimation.fromFrameData(
      MojoGame().images.fromCache("monster3/idle.png"),
      SpriteAnimationData.sequenced(
        textureSize: Vector2(512, 512),
        amount: 6,
        amountPerRow: 4,
        stepTime: 0.1,
      )),
  MonsterStates.monster1_hit: SpriteAnimation.fromFrameData(
      MojoGame().images.fromCache("monster3/hit.png"),
      SpriteAnimationData.sequenced(
        textureSize: Vector2(512, 512),
        amount: 4,
        amountPerRow: 4,
        loop: true,
        stepTime: 0.1,
      )),
  MonsterStates.monster1_death: SpriteAnimation.fromFrameData(
      MojoGame().images.fromCache("monster3/death.png"),
      SpriteAnimationData.sequenced(
        textureSize: Vector2(512, 512),
        amount: 6,
        amountPerRow: 5,
        loop: false,
        stepTime: 0.16,
      )),
};

class MonsterMojo extends SpriteAnimationGroupComponent<MonsterStates> {
  final Timer attackTimer = Timer(0.5);
  MonsterMojo()
      : super(
            size: Vector2(500, 500),
            position: Vector2(0, 20),
            animations: stage1animationMap,
            current: MonsterStates.monster1_idle);

  @override
  void onLoad() {
    attackTimer.onTick = () {
      current = MonsterStates.monster1_idle;
    };
  }

  void attackAnim(MonsterStates selanim) {
    current = selanim;
    attackTimer.start();
  }

  void changeMonster(Map<MonsterStates, SpriteAnimation> animap) {
    animations = animap;
  }

  void update(double dt) {
    attackTimer.update(dt);
    super.update(dt);
  }
}
