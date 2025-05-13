import 'package:flame/components.dart';
import 'package:flame/collisions.dart';

class Player extends SpriteAnimationComponent with CollisionCallbacks {
  Player() : super(size: Vector2(64, 64));

  @override
  Future<void> onLoad() async {
    animation = await loadSpriteAnimation(
      'characters/player_walk.png',
      SpriteAnimationData.sequenced(
        amount: 4,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
      ),
    );

    add(RectangleHitbox());
    position = Vector2(100, 200);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.add(Vector2(1, 0)); // Simples movimentação
  }
}
