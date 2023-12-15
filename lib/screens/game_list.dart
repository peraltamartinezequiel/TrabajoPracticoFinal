import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/models/game_info_preview.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:trabajo_practico_final/widgets/card_game_preview.dart';

class GameList extends StatefulWidget {
  const GameList({Key? key}) : super(key: key);

  @override
  State<GameList> createState() => _GameListState();
}

class _GameListState extends State<GameList> {
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
        'https://cdn1.epicgames.com/offer/ecebf45065bc4993abfe0e84c40ff18e/WDOG_StorePortrait_1200x1600_1200x1600-784cb50255584d5f17da73f3f8b62fe0'),
    GameInfoPreview('Halo Infinite',
        'https://i.blogs.es/a19748/halo-infinite-portada-02/450_1000.webp'),
    GameInfoPreview('Starfield ',
        'https://m.media-amazon.com/images/I/81fwGFBXWFL._AC_UF894,1000_QL80_.jpg'),
    GameInfoPreview('The Last of Us',
        'https://m.media-amazon.com/images/I/71-hlREKk6L.jpg'),
    GameInfoPreview("Elden Ring",
        'https://static.displate.com/280x392/displate/2023-02-09/4b29d0c61c49bc00ef473c5e5d6365fe_3947dc0bd54c512ce59f6e2d5afd7013.jpg'),
    GameInfoPreview('Watch Dogs',
        'https://cdn1.epicgames.com/offer/ecebf45065bc4993abfe0e84c40ff18e/WDOG_StorePortrait_1200x1600_1200x1600-784cb50255584d5f17da73f3f8b62fe0'),
    GameInfoPreview('Halo Infinite',
        'https://i.blogs.es/a19748/halo-infinite-portada-02/450_1000.webp'),
    GameInfoPreview('Starfield ',
        'https://m.media-amazon.com/images/I/81fwGFBXWFL._AC_UF894,1000_QL80_.jpg'),
    GameInfoPreview('The Last of Us',
        'https://m.media-amazon.com/images/I/71-hlREKk6L.jpg'),
    GameInfoPreview("Elden Ring",
        'https://static.displate.com/280x392/displate/2023-02-09/4b29d0c61c49bc00ef473c5e5d6365fe_3947dc0bd54c512ce59f6e2d5afd7013.jpg'),
    GameInfoPreview('Watch Dogs',
        'https://cdn1.epicgames.com/offer/ecebf45065bc4993abfe0e84c40ff18e/WDOG_StorePortrait_1200x1600_1200x1600-784cb50255584d5f17da73f3f8b62fe0'),
    GameInfoPreview('Halo Infinite',
        'https://i.blogs.es/a19748/halo-infinite-portada-02/450_1000.webp'),
    GameInfoPreview('Starfield ',
        'https://m.media-amazon.com/images/I/81fwGFBXWFL._AC_UF894,1000_QL80_.jpg'),
    GameInfoPreview('The Last of Us',
        'https://m.media-amazon.com/images/I/71-hlREKk6L.jpg'),
    GameInfoPreview("Elden Ring",
        'https://static.displate.com/280x392/displate/2023-02-09/4b29d0c61c49bc00ef473c5e5d6365fe_3947dc0bd54c512ce59f6e2d5afd7013.jpg'),
    GameInfoPreview('Watch Dogs',
        'https://cdn1.epicgames.com/offer/ecebf45065bc4993abfe0e84c40ff18e/WDOG_StorePortrait_1200x1600_1200x1600-784cb50255584d5f17da73f3f8b62fe0'),
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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // Número de columnas
          childAspectRatio: 0.9,
        ),
        itemCount: games.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: CardGamePreview(game: games[index]),
          );
        },
      ),
    );
    //);
  }
}
