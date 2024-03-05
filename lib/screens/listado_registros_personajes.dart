import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/helpers/preferences.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/widgets/drawer_menu.dart';
import '../providers/personajes_provider.dart';

class ListadoRegistrosPersonajes extends StatelessWidget {
  const ListadoRegistrosPersonajes({super.key});

  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<ThemeProvider>(context, listen: true);
    final listaPersonajes = Provider.of<PersonajesProvider>(context);
    listaPersonajes.getPersonajes();
    return Scaffold(
        appBar: AppBar(
            title: const Text('Registro de personajes'),
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
        body: ListView.builder(
            itemCount: listaPersonajes.personajes.length,
            itemBuilder: (_, index) {
              return ListTile(
                  title: Text(
                    'id: ${listaPersonajes.personajes[index].id}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'name: ${listaPersonajes.personajes[index].name}',
                    style: TextStyle(fontSize: 16),
                  ));
            }));
  }
}
