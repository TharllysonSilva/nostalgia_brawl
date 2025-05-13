import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'player.dart';
import 'enemy.dart';
import 'controls.dart';

class NostalgiaGame extends FlameGame with HasCollisionDetection {
  late Player player;
  late Enemy enemy;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    player = Player();
    enemy = Enemy();

    add(player);
    add(enemy);
  }
}
