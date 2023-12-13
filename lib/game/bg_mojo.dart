import 'dart:ui';

import 'package:flame/components.dart';

class BackgroundMojo extends SpriteComponent {
  BackgroundMojo({required this.sized, required this.imaged})
      : super(size: sized, sprite: Sprite(imaged));
  final Vector2 sized;
  final Image imaged;
  void changeBg(Sprite sprited) {
    sprite = sprited;
  }
}
