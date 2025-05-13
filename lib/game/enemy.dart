import 'package:flame/components.dart';

class Enemy extends SpriteComponent {
  Enemy({required Vector2 position})
      : super(
          size: Vector2(64, 64),
          position: position,
        );

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('enemy/shade_idle.png');
  }
}
