import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/personaje.dart';

class PersonajeIdProvider extends ChangeNotifier {
  Personaje? personaje;
  PersonajeIdProvider({required int id}) {
    this.getPersonajeId(id);
  }
  Future<Personaje?> getPersonajeId(int id) async {
    final response = await http
        .get(Uri.parse('http://10.0.2.2:3000/api/v1/personajes/populares/$id'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data'];
      personaje = data.map((personaje) => Personaje.fromJson(personaje));
      return this.personaje;
    } else {
      throw Exception('No se pudo cargar el personaje');
    }
  }
}
