// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'globalState.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GlobalState on _GlobalState, Store {
  late final _$mojoGameOverlayAtom =
      Atom(name: '_GlobalState.mojoGameOverlay', context: context);

  @override
  int get mojoGameOverlay {
    _$mojoGameOverlayAtom.reportRead();
    return super.mojoGameOverlay;
  }

  @override
  set mojoGameOverlay(int value) {
    _$mojoGameOverlayAtom.reportWrite(value, super.mojoGameOverlay, () {
      super.mojoGameOverlay = value;
    });
  }

  late final _$mojoXPAtom = Atom(name: '_GlobalState.mojoXP', context: context);

  @override
  double get mojoXP {
    _$mojoXPAtom.reportRead();
    return super.mojoXP;
  }

  @override
  set mojoXP(double value) {
    _$mojoXPAtom.reportWrite(value, super.mojoXP, () {
      super.mojoXP = value;
    });
  }

  late final _$enableDetectionAtom =
      Atom(name: '_GlobalState.enableDetection', context: context);

  @override
  bool get enableDetection {
    _$enableDetectionAtom.reportRead();
    return super.enableDetection;
  }

  @override
  set enableDetection(bool value) {
    _$enableDetectionAtom.reportWrite(value, super.enableDetection, () {
      super.enableDetection = value;
    });
  }

  late final _$userAtom = Atom(name: '_GlobalState.user', context: context);

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$actionStartAtom =
      Atom(name: '_GlobalState.actionStart', context: context);

  @override
  bool get actionStart {
    _$actionStartAtom.reportRead();
    return super.actionStart;
  }

  @override
  set actionStart(bool value) {
    _$actionStartAtom.reportWrite(value, super.actionStart, () {
      super.actionStart = value;
    });
  }

  late final _$selectedStageAtom =
      Atom(name: '_GlobalState.selectedStage', context: context);

  @override
  int get selectedStage {
    _$selectedStageAtom.reportRead();
    return super.selectedStage;
  }

  @override
  set selectedStage(int value) {
    _$selectedStageAtom.reportWrite(value, super.selectedStage, () {
      super.selectedStage = value;
    });
  }

  late final _$_GlobalStateActionController =
      ActionController(name: '_GlobalState', context: context);

  @override
  void buyPotion(PotionType potype) {
    final _$actionInfo = _$_GlobalStateActionController.startAction(
        name: '_GlobalState.buyPotion');
    try {
      return super.buyPotion(potype);
    } finally {
      _$_GlobalStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeMon(Map<MonsterStates, SpriteAnimation> animap) {
    final _$actionInfo = _$_GlobalStateActionController.startAction(
        name: '_GlobalState.changeMon');
    try {
      return super.changeMon(animap);
    } finally {
      _$_GlobalStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeBackg(String backpic) {
    final _$actionInfo = _$_GlobalStateActionController.startAction(
        name: '_GlobalState.changeBackg');
    try {
      return super.changeBackg(backpic);
    } finally {
      _$_GlobalStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void animStart() {
    final _$actionInfo = _$_GlobalStateActionController.startAction(
        name: '_GlobalState.animStart');
    try {
      return super.animStart();
    } finally {
      _$_GlobalStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void exerChange(String exer) {
    final _$actionInfo = _$_GlobalStateActionController.startAction(
        name: '_GlobalState.exerChange');
    try {
      return super.exerChange(exer);
    } finally {
      _$_GlobalStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mojoGameOverlay: ${mojoGameOverlay},
mojoXP: ${mojoXP},
enableDetection: ${enableDetection},
user: ${user},
actionStart: ${actionStart},
selectedStage: ${selectedStage}
    ''';
  }
}
