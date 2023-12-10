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
          title: Text(
            'GamePedia',
            style: TextStyle(
              color: temaProvider.colorTexto,
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),
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
      body: const Center(
          child: Text('Ezequiel Peralta Martin, Tatiana Gutierrez')),
    );
  }
}
