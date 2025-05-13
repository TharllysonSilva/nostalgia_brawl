import 'package:flame/components.dart';
import 'package:flame/collisions.dart';

class Player extends SpriteAnimationComponent with CollisionCallbacks {
  int hp = 100;

  Player()
      : super(
          size: Vector2(64, 64),
          position: Vector2(100, 200),
        );

  @override
  Future<void> onLoad() async {
    animation = await SpriteAnimation.load(
      'player/kai_walk.png',
      SpriteAnimationData.sequenced(
        amount: 4,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
      ),
    );

    add(RectangleHitbox());
  }

  void takeDamage(int amount) {
    hp = (hp - amount).clamp(0, 100);
  }
}
