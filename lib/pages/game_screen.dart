import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:mojofit/game/mojo_game.dart';
import 'package:mojofit/widgets/recognize_pos.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: MojoGameVar,
      overlayBuilderMap: {
        'posenet': (_, MojoGameVar) {
          return RecognizePos();
        },
      },
      initialActiveOverlays: const ['posenet'],
    );
  }
}
