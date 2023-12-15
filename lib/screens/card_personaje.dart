import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/helpers/preferences.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/widgets/drawer_menu.dart';
import 'package:trabajo_practico_final/models/personaje.dart';

class CardPersonaje extends StatelessWidget {
  const CardPersonaje({super.key});

  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<ThemeProvider>(context, listen: true);
    final Personaje? personaje = Personaje(
        imagen:
            'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
        nombre: 'Simon (Ghost) Riley',
        aka: 'Ghost',
        nacionalidad: 'Britanico/Ingles',
        raza: 'Humano',
        sexo: 'Masculino',
        primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
        ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
        creado_por: 'Infinity Ward');
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
        body: personaje != null
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
                              Image.network(
                                personaje.imagen,
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Icon(Icons.error);
                                },
                              ),
                              Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Nombre: ${personaje.nombre}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 16.0),
                                        Text(
                                          'Nacionalidad: ${personaje.nacionalidad}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 16.0),
                                        Text(
                                          'Raza: ${personaje.raza}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 16.0),
                                        Text(
                                          'Sexo: ${personaje.sexo}',
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
