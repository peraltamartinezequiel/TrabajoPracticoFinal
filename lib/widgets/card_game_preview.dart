import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/main.dart';
import 'package:trabajo_practico_final/models/game_info.dart';

class CardGamePreview extends StatelessWidget {
  final GameInfo game;

  const CardGamePreview({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToGameInfo(context, game);
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13.0),
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
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(13.0),
                      bottomRight: Radius.circular(13.0),
                    ),
                    color: Colors.black.withOpacity(0.6),
                  ),
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
        ),
      ),
    );
  }
}
