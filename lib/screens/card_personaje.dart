import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/helpers/preferences.dart';
import 'package:trabajo_practico_final/providers/personaje_id_provider.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/widgets/drawer_menu.dart';

class CardPersonaje extends StatelessWidget {
  const CardPersonaje({super.key});

  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<ThemeProvider>(context, listen: true);
    final personajeId = Provider.of<PersonajeIdProvider>(context);
    personajeId.getPersonajeId(6636);
    return Scaffold(
        appBar: AppBar(
            title: const Text('Card de personaje'),
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
        body: personajeId.personaje != null
            ? Center(
                child: SizedBox(
                    width: 300,
                    height: 450,
                    child: Card(
                        elevation: 3,
                        margin: EdgeInsets.symmetric(vertical: 4.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'id: ${personajeId.personaje?.id}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 16.0),
                                        Text(
                                          'name: ${personajeId.personaje?.name}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 16.0),
                                        Text(
                                          'slug: ${personajeId.personaje?.slug}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 16.0),
                                        Text(
                                          'url: ${personajeId.personaje?.url}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ]))
                            ]))))
            : Center(child: Text('Ningun personaje seleccionado')));
  }
}
