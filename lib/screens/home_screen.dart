import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/helpers/preferences.dart';
import 'package:trabajo_practico_final/models/game_info_preview.dart';
import 'package:trabajo_practico_final/providers/games_provider.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/widgets/card_game_preview.dart';
import 'package:trabajo_practico_final/widgets/drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<ThemeProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GamePedia',
          style: TextStyle(
              color: temaProvider.colorTexto,
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Switch(
              value: Preferences.darkmode,
              onChanged: (bool value) {
                Preferences.darkmode = value;
                (value) ? temaProvider.setDark() : temaProvider.setLight();
              })
        ],
        iconTheme: Theme.of(context).iconTheme,
      ),
      drawer: DrawerMenu(),
      body: FutureBuilder(
        future: GamesProvider.getGames(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());

          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));

          } else {
            List<GameInfoPreview> games = snapshot.data;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // JUEGO EN GRANDE
                SizedBox(height: 230, child: CardGamePreview(game: games[0])),

                // TÍTULO
                const Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    top: 18.0,
                    right: 16.0,
                    bottom: 10.0,
                  ),
                  child: Text(
                    "What's New",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),

                // JUEGOS EN COLUMNAS
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Número de columnas
                      crossAxisSpacing: 8.0, // Espaciado entre columnas
                      mainAxisSpacing: 8.0, // Espaciado entre filas
                      childAspectRatio: 0.9,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CardGamePreview(game: games[index + 1]);
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
