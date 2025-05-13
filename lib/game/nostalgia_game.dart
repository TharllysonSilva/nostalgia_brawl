import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:nostalgia_brawl/ui/hud.dart';
import 'player.dart';
import 'enemy.dart';

class NostalgiaGame extends FlameGame with HasCollisionDetection {
  late Player player;
  late Enemy enemy;
  late Hud hud;

  @override
  Future<void> onLoad() async {
    await images.loadAll([
      'player/kai_walk.png',
      'enemy/shade_idle.png',
      'ui/hud_bar.png',
    ]);

    player = Player();
    enemy = Enemy(position: Vector2(250, 200));
    hud = Hud(player);

    add(player);
    add(enemy);
    add(hud);
  }
}
