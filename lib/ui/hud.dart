import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:nostalgia_brawl/game/player.dart';

class Hud extends PositionComponent {
  final Player player;
  Hud(this.player);

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    // Barra de vida
    final hpWidth = player.hp.toDouble() * 2;
    final paint = Paint()..color = const Color(0xFFe53935);
    canvas.drawRect(Rect.fromLTWH(10, 10, hpWidth, 20), paint);
  }
}
