import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/helpers/preferences.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/widgets/drawer_menu.dart';
import 'package:trabajo_practico_final/models/personaje.dart';

class ListadoRegistroPersonaje extends StatelessWidget {
  const ListadoRegistroPersonaje({super.key});

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
        body: personaje != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Image.network(
                      personaje.imagen,
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.error);
                      },
                    ),
                    Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nombre: ${personaje.nombre}',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'aka: ${personaje.aka}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Nacionalidad: ${personaje.nacionalidad}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Raza: ${personaje.raza}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Sexo: ${personaje.sexo}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Primera aparicion: ${personaje.primera_aparicion}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Ultima aparicion: ${personaje.ultima_aparicion}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Creado por: ${personaje.creado_por}',
                                style: TextStyle(fontSize: 16),
                              ),
                            ]))
                  ])
            : Center(child: Text('Ningun personaje seleccionado')));
  }
}
