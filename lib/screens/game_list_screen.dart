import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/models/game_info.dart';
import 'package:trabajo_practico_final/providers/games_provider.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:trabajo_practico_final/widgets/card_game_preview.dart';

class GameList extends StatefulWidget {
  const GameList({Key? key}) : super(key: key);

  @override
  State<GameList> createState() => _GameListState();
}

class _GameListState extends State<GameList> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<ThemeProvider>(context, listen: true);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Explore Games',
            style: TextStyle(
                color: temaProvider.colorTexto,
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: FutureBuilder(
            future: GamesProvider.getGames(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                List<GameInfo> games = snapshot.data;

                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, // Número de columnas
                    childAspectRatio: 0.9,
                  ),
                  itemCount: games.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: CardGamePreview(game: games[index]),
                    );
                  },
                );
              }
            }));
  }
}
