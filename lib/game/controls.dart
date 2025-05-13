import 'package:flutter/material.dart';

class GameControls extends StatelessWidget {
  final VoidCallback onAttack;
  final VoidCallback onJump;

  const GameControls({required this.onAttack, required this.onJump, super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 30,
      child: Row(
        children: [
          ElevatedButton(onPressed: onJump, child: const Text("Pul")),
          const SizedBox(width: 10),
          ElevatedButton(onPressed: onAttack, child: const Text("Atk")),
        ],
      ),
    );
  }
}
