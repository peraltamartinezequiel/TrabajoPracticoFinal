import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final List<Map<String, String>> _itemsMenu = <Map<String, String>>[
    {'route': 'home', 'title': 'Home', 'subtitle': 'Home + counter app'},
    {
      'route': 'listadoRegistrosPersonajes',
      'title': 'Registro de Personajes',
      'subtitle': 'Informacion de cada personaje'
    },
    {
      'route': 'listadoRegistroPersonaje',
      'title': 'Registro de Personaje',
      'subtitle': 'Registro individual de un personaje'
    },
    {
      'route': 'cardPersonaje',
      'title': 'Card de personaje',
      'subtitle': 'Muestro un personaje en una card'
    },
    {'route': 'game_list', 'title': 'GameList', 'subtitle': ''}
  ];

  DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
      const DrawerHeader(
          decoration: BoxDecoration(color: Colors.grey), child: Text('Menu')),
      ...ListTile.divideTiles(
          context: context,
          tiles: _itemsMenu.map((item) => ListTile(
              title: Text(item['title']!),
              subtitle: Text(item['subtitle']!),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, item['route']!);
              }))).toList()
    ]));
  }
}
