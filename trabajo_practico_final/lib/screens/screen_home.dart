import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/helpers/preferences.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/widgets/drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<ThemeProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
          title: const Text('Trabajo Practico Final'),
          centerTitle: true,
          actions: [
            Switch(
                value: Preferences.darkmode,
                onChanged: (bool value) {
                  Preferences.darkmode = value;
                  (value) ? temaProvider.setDark() : temaProvider.setLight();
                })
          ]),
      drawer: DrawerMenu(),
      body: const Center(
          child: Text('Ezequiel Peralta Martin, Tatiana Gutierrez')),
    );
  }
}
