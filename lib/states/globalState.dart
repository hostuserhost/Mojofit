import 'package:flame/components.dart';
import 'package:mobx/mobx.dart';
import 'package:mojofit/game/bg_mojo.dart';
import 'package:mojofit/game/mojo_game.dart';
import 'package:mojofit/game/monster_mojo.dart';
import 'package:mojofit/game/player_mojo.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mojofit/models/user.dart';
import 'package:mojofit/models/user_hive.dart';
import 'package:mojofit/models/potion.dart';
import 'package:mojofit/widgets/game_overlays/select_move_overlay.dart';
// Include generated file
part 'globalState.g.dart';

final personal = Hive.box<UserHive>('main');
final globalState = GlobalState();
class GlobalState = _GlobalState with _$GlobalState;

// The store-class
abstract class _GlobalState with Store {
  @observable
  int mojoGameOverlay = 0;
  @observable
  @observable
  double mojoXP = 1;
  String exerName = "";
  @observable
  bool enableDetection = true;
  @observable
  User user = User.fromUserHive(personal.get('main')!);
  @observable
  bool actionStart = true;
  @observable
  int selectedStage = 2;

  @action
  void buyPotion(PotionType potype) {
    if (potype.cost <= globalState.user.money.value) {
      user.potions[potype] = user.potions[potype]! + 1;
      user.money.value = globalState.user.money.value - potype.cost;
      personal.put(
          'main', UserHive(user.money.value, user.xp.value, user.potions));
    }
  }

  @action
  void changeMon(Map<MonsterStates, SpriteAnimation> animap) {
    MonsterMojoVar.changeMonster(animap);
  }

  @action
  void changeBackg(String backpic) {
    BackgroundMojoVar.sprite = Sprite(MojoGameVar.images.fromCache(backpic));
  }

  @action
  void animStart() {
    mojoGameOverlay = 2;
    PlayerMojoVar.attackAnim(PlayerStates.player_attack_1);
    MonsterMojoVar.attackAnim(MonsterStates.monster1_hit);
  }

  @action
  void exerChange(String exer) {
    switch (selectedMove) {
      case 1:
        if (exer == 'pushups_down' && actionStart == true) {
          animStart();
          actionStart = false;
        }
        if (exer == 'pushups_up') {
          actionStart = true;
        } else {
          actionStart = false;
        }
      case 2:
        if (exer == 'squats_down' && actionStart == true) {
          animStart();
          actionStart = false;
        }
        if (exer == 'squats_up') {
          actionStart = true;
        } else {
          actionStart = false;
        }
      case 3:
        if (exer == 'press_down' && actionStart == true) {
          animStart();
          actionStart = false;
        }
        if (exer == 'press_up') {
          actionStart = true;
        } else {
          actionStart = false;
        }
      case 4:
        if (exer == 'rac') animStart();
    }
  }
}
