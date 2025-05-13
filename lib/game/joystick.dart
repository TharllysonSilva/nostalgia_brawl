import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class GameJoystick extends JoystickComponent {
  GameJoystick()
      : super(
          knob: CircleComponent(
              radius: 15, paint: Paint()..color = const Color(0xFF2196F3)),
          background: CircleComponent(
              radius: 30, paint: Paint()..color = const Color(0x552196F3)),
          margin: const EdgeInsets.only(left: 40, bottom: 40),
        );
}
