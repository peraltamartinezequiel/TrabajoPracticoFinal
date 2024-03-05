import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/helpers/preferences.dart';
import 'package:trabajo_practico_final/providers/personaje_params_provider.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/widgets/drawer_menu.dart';

class ListadoRegistroPersonaje extends StatelessWidget {
  const ListadoRegistroPersonaje({super.key});

  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<ThemeProvider>(context, listen: true);
    final personajeParams = Provider.of<PersonajeParamsProvider>(context);
    personajeParams.getPersonajeParams('Captain Price', null);
    return Scaffold(
        appBar: AppBar(
            title: const Text('Registro de personaje'),
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
        body: personajeParams.personaje != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'id: ${personajeParams.personaje?.id}',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'created_at: ${personajeParams.personaje?.created_at}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'name: ${personajeParams.personaje?.name}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'slug: ${personajeParams.personaje?.slug}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'updated_at: ${personajeParams.personaje?.updated_at}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'url: ${personajeParams.personaje?.url}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Creado por: ${personajeParams.personaje?.checksum}',
                                style: TextStyle(fontSize: 16),
                              ),
                            ]))
                  ])
            : Center(child: Text('Ningun personaje seleccionado')));
  }
}
