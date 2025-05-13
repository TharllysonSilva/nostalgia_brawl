import 'package:flame/components.dart';

class Enemy extends SpriteComponent {
  Enemy() : super(size: Vector2(64, 64));

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('characters/enemy.png');
    position = Vector2(250, 200);
  }
}
