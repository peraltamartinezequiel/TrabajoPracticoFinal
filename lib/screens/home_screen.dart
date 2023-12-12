import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/helpers/preferences.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/widgets/drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Juego> juegos = [
    Juego('Halo',
        'https://i.blogs.es/a19748/halo-infinite-portada-02/450_1000.webp'),
    Juego('Tom Rider',
        'https://m.media-amazon.com/images/M/MV5BZDkxMjExZjgtYWQwMi00OGYxLTgwZmMtMWY2MWU0ZTBkNGM0XkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_.jpg'),
    Juego('The Last of Us',
        'https://m.media-amazon.com/images/I/71-hlREKk6L.jpg'),
    Juego('Watch Dogs',
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
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Número de columnas
            crossAxisSpacing: 8.0, // Espaciado entre columnas
            mainAxisSpacing: 8.0, // Espaciado entre filas
            //childAspectRatio: 0.8,
          ),
          itemCount: juegos.length,
          itemBuilder: (context, index) {
            return _tarjetaJuego(juegos[index]);
          },
        )
    );
  }

  Widget _tarjetaJuego(Juego juego) {
    return Card(
      child: Column(
        children: [
          Flexible(
            child: Image.network(
              juego.imagenPath,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              juego.titulo,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Juego {
  final String titulo;
  final String imagenPath;

  Juego(this.titulo, this.imagenPath);
}
