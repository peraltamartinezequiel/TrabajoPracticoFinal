import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/models/game_info_preview.dart';

class CardGamePreview extends StatelessWidget {
  final GameInfoPreview game;

  const CardGamePreview({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Image.network(
            game.cover,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: Colors.black.withOpacity(0.6),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                game.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
