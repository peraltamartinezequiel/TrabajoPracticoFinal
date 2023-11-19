import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final List<Map<String, String>> _itemsMenu = <Map<String, String>>[
    {'route': 'home', 'title': 'Home', 'subtitle': 'Home + counter app'}
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
