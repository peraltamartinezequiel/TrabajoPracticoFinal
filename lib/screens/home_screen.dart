import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/helpers/preferences.dart';
import 'package:trabajo_practico_final/models/game_info_preview.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/widgets/card_game_preview.dart';
import 'package:trabajo_practico_final/widgets/drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<GameInfoPreview> games = [
    GameInfoPreview('Halo Infinite',
        'https://i.blogs.es/a19748/halo-infinite-portada-02/450_1000.webp'),
    GameInfoPreview('Starfield ',
        'https://m.media-amazon.com/images/I/81fwGFBXWFL._AC_UF894,1000_QL80_.jpg'),
    GameInfoPreview('The Last of Us',
        'https://m.media-amazon.com/images/I/71-hlREKk6L.jpg'),
    GameInfoPreview("Elden Ring",
        'https://static.displate.com/280x392/displate/2023-02-09/4b29d0c61c49bc00ef473c5e5d6365fe_3947dc0bd54c512ce59f6e2d5afd7013.jpg'),
    GameInfoPreview('Watch Dogs',
        'https://cdn1.epicgames.com/offer/ecebf45065bc4993abfe0e84c40ff18e/WDOG_StorePortrait_1200x1600_1200x1600-784cb50255584d5f17da73f3f8b62fe0')
  ];

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
      body: Column(
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
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),

          // JUEGOS EN COLUMNAS
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Número de columnas
                crossAxisSpacing: 8.0, // Espaciado entre columnas
                mainAxisSpacing: 8.0, // Espaciado entre filas
                childAspectRatio: 0.9,
              ),
              itemCount: games.length - 1,
              itemBuilder: (context, index) {
                return CardGamePreview(game: games[index + 1]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
