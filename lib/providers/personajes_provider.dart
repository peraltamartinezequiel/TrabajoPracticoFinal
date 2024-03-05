import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/personaje.dart';

class PersonajesProvider extends ChangeNotifier {
  List<Personaje> personajes = [];
  PersonajesProvider() {
    this.getPersonajes();
  }
  Future<List<Personaje>> getPersonajes() async {
    final response = await http
        .get(Uri.parse('https://trabajo-practico-1.onrender.com/api/v1/personajes/populares'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body)['data'];
      personajes =
          data.map((personaje) => Personaje.fromJson(personaje)).toList();
      return this.personajes;
    } else {
      throw Exception('No se pudieron cargar los personajes.');
    }
  }
}
