import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/helpers/preferences.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_practico_final/widgets/drawer_menu.dart';
import 'package:trabajo_practico_final/models/personaje.dart';

class ListadoRegistrosPersonajes extends StatelessWidget {
  const ListadoRegistrosPersonajes({super.key});

  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<ThemeProvider>(context, listen: true);
    final List<Personaje> personajes = [
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
      Personaje(
          imagen:
              'https://static.wikia.nocookie.net/cod/images/7/7c/Simon_Riley_remasterizado.jpg/revision/latest?cb=20210621183707&path-prefix=es',
          nombre: 'Simon (Ghost) Riley',
          aka: 'Ghost',
          nacionalidad: 'Britanico/Ingles',
          raza: 'Humano',
          sexo: 'Masculino',
          primera_aparicion: 'Call of Duty Modern Warfare 2 (2009)',
          ultima_aparicion: 'Call of Duty Modern Warfare 3 (2023)',
          creado_por: 'Infinity Ward'),
    ];

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
            itemCount: personajes.length,
            itemBuilder: (_, index) {
              return ListTile(
                  title: Text(
                    'Nombre: ${personajes[index].nombre}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'aka: ${personajes[index].aka}',
                    style: TextStyle(fontSize: 16),
                  ),
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(personajes[index].imagen)));
            }));
  }
}
